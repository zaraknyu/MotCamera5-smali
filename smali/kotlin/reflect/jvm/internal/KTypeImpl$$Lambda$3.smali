.class public final Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Ljava/lang/Object;

.field public final arg$1:I

.field public final arg$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KTypeImpl;ILkotlin/Lazy;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$0:Ljava/lang/Object;

    iput p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$1:I

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;II)V
    .locals 0

    .line 2
    iput p4, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$0:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$2:Ljava/lang/Object;

    iput p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iget p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$1:I

    invoke-interface {v2, v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadExtensionReceiverParameterAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iget p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$1:I

    invoke-interface {v2, v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadCallableAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_3
    return-object p0

    :pswitch_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/KTypeImpl;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-class p0, Ljava/lang/Object;

    :goto_3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    instance-of v2, v1, Ljava/lang/reflect/GenericArrayType;

    iget v3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$1:I

    if-eqz v2, :cond_8

    if-nez v3, :cond_7

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;->arg$2:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getLowerBounds(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_a

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "getUpperBounds(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_4

    :cond_a
    move-object p0, v0

    :goto_4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    return-object p0

    :cond_b
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
