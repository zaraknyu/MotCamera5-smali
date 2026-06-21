.class public final Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Ljava/lang/Object;

.field public final arg$1:Ljava/lang/Object;

.field public final arg$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$0:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$1:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$2:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->extensionRegistryLite:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;

    invoke-virtual {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/ByteArrayInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-direct {v0, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$18;->arg$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl;->jClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInterfaces(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No superclass of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in Java reflection for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported superclass of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supertype not a class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
