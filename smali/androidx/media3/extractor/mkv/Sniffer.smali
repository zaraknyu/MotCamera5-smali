.class public final Landroidx/media3/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic $r8$classId:I

.field public peekLength:I

.field public scratch:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(CI)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 8
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void

    .line 11
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 13
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void

    .line 14
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xff

    .line 15
    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void

    .line 17
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x12c

    .line 18
    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 19
    sget-object p1, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 20
    new-instance p1, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {p1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    iput-object p3, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 24
    iput-object p2, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Landroidx/media3/common/util/GlProgram;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-void
.end method

.method public static final access$readObject(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/DeepRecursiveScopeImpl;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/GlProgram;

    instance-of v1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    invoke-direct {v1, p0, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v3, :cond_4

    if-ne v3, v9, :cond_3

    iget-object p0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/String;

    iget-object p1, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/util/LinkedHashMap;

    iget-object v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Landroidx/media3/extractor/mkv/Sniffer;

    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result p0

    if-eq p0, v8, :cond_2

    if-ne p0, v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/GlProgram;

    const-string p1, "Expected end of the object or comma"

    invoke-static {p0, p1, v4, v5, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_2
    move p2, p0

    move-object p0, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    move-result p2

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v3

    if-eq v3, v8, :cond_8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    iget-object v3, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v3}, Landroidx/media3/common/util/GlProgram;->canConsumeValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroidx/media3/common/util/GlProgram;->consumeString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    iput-object p1, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    iput-object p0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Landroidx/media3/extractor/mkv/Sniffer;

    iput-object v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/util/LinkedHashMap;

    iput-object p2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/String;

    iput v9, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    return-object v2

    :cond_5
    move-object p1, v0

    move-object v0, p0

    move p0, p2

    :goto_2
    iget-object p2, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/util/GlProgram;

    if-ne p0, v6, :cond_6

    invoke-virtual {p2, v7}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    goto :goto_3

    :cond_6
    if-eq p0, v8, :cond_7

    :goto_3
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_7
    const-string p0, "object"

    invoke-static {p2, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    throw v5

    :cond_8
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v4, v5, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method


# virtual methods
.method public at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    sget-object v1, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;-><init>(Ljava/lang/Float;Landroidx/compose/animation/core/Easing;)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p2, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-object v0
.end method

.method public ch()C
    .locals 3

    .line 3
    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    iget-object v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ch(I)C
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ensureTotalCapacity(II)V
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, [C

    array-length v1, v0

    if-gt v1, p2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    if-ge p2, p1, :cond_0

    move p2, p1

    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public gatherInt(ILjava/lang/String;)I
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mkv/Sniffer;->ch(I)C

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x30

    if-gt v4, v0, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mkv/Sniffer;->ch(I)C

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    if-le v2, p1, :cond_1

    return p1

    :cond_1
    if-gez v2, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const/4 p1, 0x5

    invoke-direct {p0, p2, p1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCodecCount()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, [Landroid/media/MediaCodecInfo;

    array-length p0, p0

    return p0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, [Landroid/media/MediaCodecInfo;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasShadow()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/utils/DropShadow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public perform(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroid/util/LruCache;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public read()Lkotlinx/serialization/json/JsonElement;
    .locals 9

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/mkv/Sniffer;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Landroidx/media3/extractor/mkv/Sniffer;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v1, v4, :cond_c

    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    invoke-direct {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/coroutines/Continuation;)V

    sget-object v1, Lkotlin/DeepRecursiveKt;->UNDEFINED_RESULT:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    new-instance v1, Lkotlin/DeepRecursiveScopeImpl;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->function:Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    iput-object v1, v1, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/DeepRecursiveKt;->UNDEFINED_RESULT:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iput-object v2, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    iget-object v3, v1, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    if-nez v3, :cond_3

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    goto/16 :goto_3

    :cond_3
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->function:Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    const/4 v4, 0x3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    new-instance v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {v4, v0, v3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq v0, v4, :cond_2

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iput-object v2, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    invoke-interface {v3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_b

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->canConsumeValue()Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/Sniffer;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result v1

    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_7

    goto :goto_1

    :cond_7
    const-string p0, "Expected end of the object or comma"

    invoke-static {v0, p0, v3, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_8
    :goto_1
    if-ne v1, v4, :cond_9

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    goto :goto_2

    :cond_9
    if-eq v1, v6, :cond_a

    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    :goto_3
    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-object v0

    :cond_a
    const-string p0, "object"

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    throw v5

    :cond_b
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v3, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_c
    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/Sniffer;->readArray()Lkotlinx/serialization/json/JsonArray;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {v1}, Lkotlinx/serialization/json/internal/WriteModeKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot read Json element because of unexpected "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public readArray()Lkotlinx/serialization/json/JsonArray;
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->canConsumeValue()Z

    move-result v6

    const/16 v7, 0x9

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/Sniffer;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result v1

    if-eq v1, v5, :cond_0

    if-ne v1, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget v7, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Expected end of the array or comma"

    invoke-static {v0, p0, v7, v4, v5}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_3
    const/16 p0, 0x8

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(B)B

    goto :goto_2

    :cond_4
    if-eq v1, v5, :cond_5

    :goto_2
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p0, v2}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    const-string p0, "array"

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p0, "Unexpected leading comma"

    const/4 v1, 0x6

    invoke-static {v0, p0, v3, v4, v1}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4
.end method

.method public readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v2, v1, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_0
    const/16 v4, 0x80

    move v5, v2

    :goto_0
    and-int v6, v1, v4

    if-nez v6, :cond_1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v4, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v2, v4, v5}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    :goto_1
    if-ge v2, v5, :cond_2

    shl-int/lit8 p1, v1, 0x8

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    iput v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    int-to-long p0, v1

    return-wide p0
.end method

.method public readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/GlProgram;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    const-string v0, "null"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_1
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public release()V
    .locals 4

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast p0, [C

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "array"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v2, p0

    add-int/2addr v2, v1

    sget v3, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->MAX_CHARS_IN_POOL:I

    if-ge v2, v3, :cond_0

    array-length v2, p0

    add-int/2addr v1, v2

    iput v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    iget-object v1, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public secureDecodersExplicit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public skip()V
    .locals 1

    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v1, [C

    const/4 v2, 0x0

    iget p0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    invoke-virtual {p0, v1, v0}, Landroidx/media3/extractor/mkv/Sniffer;->ensureTotalCapacity(II)V

    iget-object v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v1, [C

    iget v2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    return-void
.end method
