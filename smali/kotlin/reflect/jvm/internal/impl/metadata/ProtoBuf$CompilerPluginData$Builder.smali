.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;


# instance fields
.field public final synthetic $r8$classId:I

.field public bitField0_:I

.field public data_:Ljava/lang/Object;

.field public pluginId_:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->$r8$classId:I

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Lcom/google/gson/JsonParseException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Lcom/google/gson/JsonParseException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;)V

    .line 2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->pluginId_:I

    .line 4
    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->nameId_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    .line 6
    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->value_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    .line 7
    iput v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->bitField0_:I

    return-object v0
.end method

.method public buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;
    .locals 4

    .line 8
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;)V

    .line 9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->pluginId_:I

    .line 11
    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->pluginId_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 12
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 13
    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->data_:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 14
    iput v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->bitField0_:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;-><init>(I)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;-><init>(I)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 20
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;-><init>(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 24
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;)V

    .line 27
    :cond_0
    throw p1

    :pswitch_0
    const/4 p2, 0x0

    .line 28
    :try_start_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;-><init>(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;)V
    :try_end_3
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 30
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;)V

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    :try_start_4
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 32
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 33
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;)V

    .line 35
    :cond_1
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 18
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;)V

    return-object p0

    .line 19
    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;)V
    .locals 4

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->nameId_:I

    .line 4
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    .line 5
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->pluginId_:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->value_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    .line 7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    .line 8
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    if-eq v2, v3, :cond_2

    .line 9
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;)V

    .line 11
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;)V

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    .line 13
    :goto_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    .line 14
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 15
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 16
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method public mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;)V
    .locals 4

    .line 36
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;

    if-ne p1, v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 38
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->pluginId_:I

    .line 39
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    .line 40
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->pluginId_:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 41
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->data_:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->bitField0_:I

    .line 44
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData$Builder;->data_:Ljava/lang/Object;

    .line 45
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 46
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$CompilerPluginData;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 47
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    .line 48
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method
