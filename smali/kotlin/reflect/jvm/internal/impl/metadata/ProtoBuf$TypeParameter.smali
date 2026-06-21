.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SourceFile"


# static fields
.field public static final PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

.field public static final defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;


# instance fields
.field public bitField0_:I

.field public id_:I

.field public memoizedIsInitialized:B

.field public memoizedSerializedSize:I

.field public name_:I

.field public reified_:Z

.field public final unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field public upperBoundIdMemoizedSerializedSize:I

.field public upperBoundId_:Ljava/util/List;

.field public upperBound_:Ljava/util/List;

.field public variance_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    iput v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->name_:I

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->reified_:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->variance_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundIdMemoizedSerializedSize:I

    .line 9
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    .line 10
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedSerializedSize:I

    .line 11
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    .locals 13

    .line 12
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundIdMemoizedSerializedSize:I

    .line 14
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    .line 15
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedSerializedSize:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    .line 17
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->name_:I

    .line 18
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->reified_:Z

    .line 19
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->variance_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    .line 20
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    .line 21
    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    .line 22
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;-><init>()V

    const/4 v3, 0x1

    .line 23
    invoke-static {v2, v3}, Landroidx/media3/common/util/TimedValueQueue;->newInstance(Ljava/io/OutputStream;I)Landroidx/media3/common/util/TimedValueQueue;

    move-result-object v4

    move v5, v0

    move v6, v5

    :cond_0
    :goto_0
    const/16 v7, 0x10

    const/16 v8, 0x20

    if-nez v5, :cond_14

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readTag()I

    move-result v9

    if-eqz v9, :cond_1

    const/16 v10, 0x8

    if-eq v9, v10, :cond_11

    const/4 v11, 0x2

    if-eq v9, v7, :cond_10

    const/16 v12, 0x18

    if-eq v9, v12, :cond_e

    if-eq v9, v8, :cond_9

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_7

    const/16 v10, 0x30

    if-eq v9, v10, :cond_5

    const/16 v10, 0x32

    if-eq v9, v10, :cond_2

    .line 25
    invoke-virtual {p0, p1, v4, p2, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Landroidx/media3/common/util/TimedValueQueue;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    move v5, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 26
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v9

    .line 27
    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->pushLimit(I)I

    move-result v9

    and-int/lit8 v10, v6, 0x20

    if-eq v10, v8, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_3

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_4

    .line 31
    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v11

    .line 33
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->popLimit(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v9, v6, 0x20

    if-eq v9, v8, :cond_6

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    .line 36
    :cond_6
    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v10

    .line 38
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v9, v6, 0x10

    if-eq v9, v7, :cond_8

    .line 39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    or-int/lit8 v6, v6, 0x10

    .line 40
    :cond_8
    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {p1, v10, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_9
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v12

    if-eqz v12, :cond_c

    if-eq v12, v3, :cond_b

    if-eq v12, v11, :cond_a

    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    move-object v11, v1

    goto :goto_2

    .line 42
    :cond_b
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    goto :goto_2

    .line 43
    :cond_c
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    :goto_2
    if-nez v11, :cond_d

    .line 44
    invoke-virtual {v4, v9}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    .line 45
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    goto/16 :goto_0

    .line 46
    :cond_d
    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    or-int/2addr v9, v10

    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    .line 47
    iput-object v11, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->variance_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    goto/16 :goto_0

    .line 48
    :cond_e
    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    .line 49
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint64()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    move v9, v3

    goto :goto_3

    :cond_f
    move v9, v0

    .line 50
    :goto_3
    iput-boolean v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->reified_:Z

    goto/16 :goto_0

    .line 51
    :cond_10
    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    or-int/2addr v9, v11

    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    .line 52
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v9

    .line 53
    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->name_:I

    goto/16 :goto_0

    .line 54
    :cond_11
    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    or-int/2addr v9, v3

    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    .line 55
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readRawVarint32()I

    move-result v9

    .line 56
    iput v9, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 57
    :goto_4
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 60
    throw p2

    .line 61
    :goto_5
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 62
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v6, 0x10

    if-ne p2, v7, :cond_12

    .line 63
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v6, 0x20

    if-ne p2, v8, :cond_13

    .line 64
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    .line 65
    :cond_13
    :try_start_2
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :catch_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_7

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 67
    throw p1

    .line 68
    :goto_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    .line 69
    throw p1

    :cond_14
    and-int/lit8 p1, v6, 0x10

    if-ne p1, v7, :cond_15

    .line 70
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v6, 0x20

    if-ne p1, v8, :cond_16

    .line 71
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    .line 72
    :cond_16
    :try_start_3
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    :catch_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_8

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 74
    throw p1

    .line 75
    :goto_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundIdMemoizedSerializedSize:I

    .line 3
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    .line 4
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedSerializedSize:I

    .line 5
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public final getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    return-object p0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    invoke-static {v1, v0}, Landroidx/media3/common/util/TimedValueQueue;->computeInt32Size(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->name_:I

    invoke-static {v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    invoke-static {v3}, Landroidx/media3/common/util/TimedValueQueue;->computeTagSize(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->variance_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->value:I

    invoke-static {v4, v1}, Landroidx/media3/common/util/TimedValueQueue;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x5

    invoke-static {v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/TimedValueQueue;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Landroidx/media3/common/util/TimedValueQueue;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundIdMemoizedSerializedSize:I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedSerializedSize:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_6

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    return v2

    :cond_4
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    return v1

    :cond_5
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    return v2

    :cond_6
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->memoizedIsInitialized:B

    return v2
.end method

.method public final newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;)V

    return-object v0
.end method

.method public final writeTo(Landroidx/media3/common/util/TimedValueQueue;)V
    .locals 5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->getSerializedSize()I

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    invoke-virtual {p1, v2, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeInt32(II)V

    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->name_:I

    invoke-virtual {p1, v2, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeInt32(II)V

    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->reified_:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->writeTag(II)V

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawByte(I)V

    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->variance_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->value:I

    invoke-virtual {p1, v2, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeEnum(II)V

    :cond_3
    move v1, v3

    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBound_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Landroidx/media3/common/util/TimedValueQueue;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundIdMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeRawVarint32(I)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->upperBoundId_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/TimedValueQueue;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->writeUntil(ILandroidx/media3/common/util/TimedValueQueue;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method
