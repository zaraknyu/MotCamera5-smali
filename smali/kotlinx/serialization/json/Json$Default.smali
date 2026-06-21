.class public final Lkotlinx/serialization/json/Json$Default;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:Lkotlinx/serialization/json/Json$Default;


# instance fields
.field public final _schemaCache:Lcom/motorola/camera/PermissionCallback;

.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public final serializersModule:Lcom/google/mlkit/common/internal/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    invoke-direct {v0}, Lkotlinx/serialization/json/Json$Default;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonConfiguration;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    sget-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lcom/google/mlkit/common/internal/zzc;

    iput-object v0, p0, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    iput-object v0, p0, Lkotlinx/serialization/json/Json$Default;->_schemaCache:Lcom/motorola/camera/PermissionCallback;

    return-void
.end method


# virtual methods
.method public final decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 7

    const-string v0, "deserializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/common/util/GlProgram;

    invoke-direct {v4, p1}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;)V

    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/media3/common/util/GlProgram;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;)V

    invoke-virtual {v1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Expected EOF after parsing, but had "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {v4, p0, p1, v0, p2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
.end method

.method public final encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(CI)V

    sget-object v1, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, [C

    if-eqz v2, :cond_1

    iget v3, v1, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    if-nez v4, :cond_2

    const/16 v1, 0x80

    new-array v4, v1, [C

    :cond_2
    iput-object v4, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    :try_start_1
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    sget-object v2, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v3}, Lkotlin/enums/EnumEntriesList;->getSize()I

    move-result v3

    new-array v3, v3, [Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    iget-object v4, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/motorola/camera/ui/DownUpDetector;

    invoke-direct {v4, v0}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lcom/motorola/camera/ui/DownUpDetector;Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    invoke-virtual {v1, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/Sniffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/Sniffer;->release()V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/Sniffer;->release()V

    throw p0

    :goto_2
    monitor-exit v1

    throw p0
.end method
