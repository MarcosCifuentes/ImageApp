// ignore_for_file: public_member_api_docs

///* IMapper: Transforms Article DTOs to entities and vice versa.


///E = Entity
///D = DTO
abstract interface class IBaseResponseMapper<E, D> {
  E fromDtoToEntity(D dto);
}

///E = Entity
///R = RequestPayload
abstract interface class IBasePayloadMapper<E, R> {
  R fromEntityToRequestPayload(E entity);
}
