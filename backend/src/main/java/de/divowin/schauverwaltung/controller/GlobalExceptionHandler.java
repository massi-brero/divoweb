package de.divowin.schauverwaltung.controller;

import jakarta.persistence.EntityNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ProblemDetail;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.stream.Collectors;

/**
 * Zentrales Fehlerhandling (RFC 9457 – Problem Details).
 *
 * Ersetzt die verstreuten {@code ResponseEntity.notFound().build()}-Konstrukte
 * aus dem alten Controller. Services werfen einfach die passende Exception,
 * dieser Handler übersetzt sie in den korrekten HTTP-Status.
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    /** 404 – Entity nicht gefunden */
    @ExceptionHandler(EntityNotFoundException.class)
    public ProblemDetail handleNotFound(EntityNotFoundException ex) {
        return ProblemDetail.forStatusAndDetail(HttpStatus.NOT_FOUND, ex.getMessage());
    }

    /** 400 – Ungültige Argumente (z.B. Sieger gehört nicht zur Schau) */
    @ExceptionHandler(IllegalArgumentException.class)
    public ProblemDetail handleBadRequest(IllegalArgumentException ex) {
        return ProblemDetail.forStatusAndDetail(HttpStatus.BAD_REQUEST, ex.getMessage());
    }

    /** 422 – Bean-Validation-Fehler auf Request-DTOs */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ProblemDetail handleValidation(MethodArgumentNotValidException ex) {
        String detail = ex.getBindingResult().getFieldErrors().stream()
                .map(fe -> fe.getField() + ": " + fe.getDefaultMessage())
                .collect(Collectors.joining("; "));
        return ProblemDetail.forStatusAndDetail(HttpStatus.UNPROCESSABLE_ENTITY, detail);
    }
}
