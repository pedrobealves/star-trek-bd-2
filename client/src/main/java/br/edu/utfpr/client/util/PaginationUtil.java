package br.edu.utfpr.client.util;

import java.util.Arrays;

public class PaginationUtil {
    public static <T> T[] getPageItems(T[] items, int page, int pageSize) {
        int totalItems = items.length;
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        if (page < 1 || page > totalPages) {
            throw new IllegalArgumentException("Página inválida");
        }

        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, totalItems);

        return Arrays.copyOfRange(items, startIndex, endIndex);
    }

    public static int getTotalPages(int totalItems, int pageSize) {
        return (int) Math.ceil((double) totalItems / pageSize);
    }
}