from libc.stdint cimport uint32_t
from libc.stdint cimport uint64_t
from spacy.word cimport Lexeme


cdef class Lexicon:
    cdef list string_features
    cdef list flag_features

    cdef dict _dict

    cpdef Lexeme lookup(self, unicode string)


cdef class Language:
    cdef object name
    cdef dict cache
    cpdef readonly Lexicon lexicon

    cpdef list tokenize(self, unicode text)

    cdef list _tokenize(self, unicode string)
    cpdef list _split(self, unicode string)
    cpdef int _split_one(self, unicode word)