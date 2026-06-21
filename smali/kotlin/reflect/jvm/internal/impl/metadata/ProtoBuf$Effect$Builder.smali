.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;


# instance fields
.field public bitField0_:I

.field public conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

.field public effectConstructorArgument_:Ljava/util/List;

.field public effectType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

.field public kind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;


# direct methods
.method public static create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->AT_MOST_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->kind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    return-object v0
.end method


# virtual methods
.method public final build()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Lcom/google/gson/JsonParseException;-><init>()V

    throw p0
.end method

.method public final buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->effectType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->effectConstructorArgument_:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->kind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->kind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    iput v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->bitField0_:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;)V

    return-object v0
.end method

.method public final mergeFrom(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 38
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;-><init>(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 42
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;)V

    .line 45
    :cond_0
    throw p1
.end method

.method public final bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 37
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;)V

    return-object p0
.end method

.method public final mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;)V
    .locals 4

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->effectType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    .line 6
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    .line 7
    :cond_1
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->effectConstructorArgument_:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->effectConstructorArgument_:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    .line 12
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    goto :goto_0

    .line 13
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    .line 15
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    .line 16
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->effectConstructorArgument_:Ljava/util/List;

    .line 17
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->effectConstructorArgument_:Ljava/util/List;

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_4
    :goto_0
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->bitField0_:I

    and-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_6

    .line 20
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    .line 21
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    .line 22
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    if-eq v1, v3, :cond_5

    .line 23
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$Builder;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;)V

    .line 25
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;)V

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    goto :goto_1

    .line 26
    :cond_5
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->conclusionOfConditionalEffect_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    .line 27
    :goto_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    .line 28
    :cond_6
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    .line 29
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->kind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->bitField0_:I

    .line 32
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$Builder;->kind_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    .line 33
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 34
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 35
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method
