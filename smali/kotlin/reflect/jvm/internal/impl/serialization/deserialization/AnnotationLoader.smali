.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract loadCallableAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)Ljava/util/List;
.end method

.method public abstract loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;)Ljava/util/ArrayList;
.end method

.method public abstract loadEnumEntryAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;
.end method

.method public abstract loadExtensionReceiverParameterAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)Ljava/util/List;
.end method

.method public abstract loadPropertyBackingFieldAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
.end method

.method public abstract loadPropertyDelegateFieldAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
.end method

.method public abstract loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
.end method

.method public abstract loadTypeParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
.end method

.method public abstract loadValueParameterAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;IILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Ljava/util/List;
.end method
