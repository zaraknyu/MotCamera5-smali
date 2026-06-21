.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SourceFile"


# static fields
.field public static final PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

.field public static final defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;


# instance fields
.field public bitField0_:I

.field public function_:Ljava/util/List;

.field public memoizedIsInitialized:B

.field public memoizedSerializedSize:I

.field public property_:Ljava/util/List;

.field public typeAlias_:Ljava/util/List;

.field public typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

.field public final unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field public versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    .line 8
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedSerializedSize:I

    .line 9
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    .line 12
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedSerializedSize:I

    .line 13
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    .line 16
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 17
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 18
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 19
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 20
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;-><init>()V

    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->newInstance(Ljava/io/OutputStream;I)Landroidx/media3/common/util/TimedValueQueue;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v3, :cond_11

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readTag()I

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_c

    const/16 v8, 0x22

    if-eq v7, v8, :cond_a

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_8

    const/16 v8, 0xf2

    const/4 v9, 0x0

    if-eq v7, v8, :cond_5

    const/16 v8, 0x102

    if-eq v7, v8, :cond_2

    .line 23
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Landroidx/media3/common/util/TimedValueQueue;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 24
    :cond_2
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_3

    .line 25
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;

    const/4 v8, 0x2

    .line 27
    invoke-direct {v9, v8}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;-><init>(I)V

    .line 28
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v8, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->effect_:Ljava/util/List;

    .line 29
    invoke-virtual {v9, v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    .line 30
    :cond_3
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {p1, v7, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    if-eqz v9, :cond_4

    .line 31
    invoke-virtual {v9, v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    .line 32
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 33
    :cond_4
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    or-int/2addr v7, v6

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    goto :goto_0

    .line 34
    :cond_5
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    and-int/2addr v7, v1

    if-ne v7, v1, :cond_6

    .line 35
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    move-result-object v9

    .line 37
    :cond_6
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {p1, v7, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    if-eqz v9, :cond_7

    .line 38
    invoke-virtual {v9, v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    .line 39
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 40
    :cond_7
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v5, :cond_9

    .line 41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 42
    :cond_9
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {p1, v8, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v6, :cond_b

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 44
    :cond_b
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {p1, v8, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    and-int/lit8 v7, v4, 0x1

    if-eq v7, v1, :cond_d

    .line 45
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 46
    :cond_d
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {p1, v8, p2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 47
    :goto_1
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 50
    throw p2

    .line 51
    :goto_2
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 52
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_e

    .line 53
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v6, :cond_f

    .line 54
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v5, :cond_10

    .line 55
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    .line 56
    :cond_10
    :try_start_2
    invoke-virtual {v2}, Landroidx/media3/common/util/TimedValueQueue;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 58
    throw p1

    .line 59
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    .line 60
    throw p1

    :cond_11
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_12

    .line 61
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v6, :cond_13

    .line 62
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v5, :cond_14

    .line 63
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    .line 64
    :cond_14
    :try_start_3
    invoke-virtual {v2}, Landroidx/media3/common/util/TimedValueQueue;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 66
    throw p1

    .line 67
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    .line 3
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedSerializedSize:I

    .line 4
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 5
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public final getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    return-object p0
.end method

.method public final getSerializedSize()I
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v3, 0x5

    invoke-static {v3, v1}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1e

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-static {v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    invoke-static {v0, v1}, Landroidx/media3/common/util/TimedValueQueue;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedSerializedSize:I

    return v1
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    return v2

    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    return v2

    :cond_9
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;)V

    return-object v0
.end method

.method public final writeTo(Landroidx/media3/common/util/TimedValueQueue;)V
    .locals 5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->getSerializedSize()I

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->function_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->property_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Landroidx/media3/common/util/TimedValueQueue;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeAlias_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Landroidx/media3/common/util/TimedValueQueue;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1e

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/util/TimedValueQueue;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/16 v1, 0x20

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/util/TimedValueQueue;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;)V

    :cond_4
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->writeUntil(ILandroidx/media3/common/util/TimedValueQueue;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/TimedValueQueue;->writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method
