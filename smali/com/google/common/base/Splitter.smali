.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# static fields
.field public static mSoundExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final synthetic $r8$classId:I

.field public limit:I

.field public strategy:Ljava/lang/Object;

.field public trimmer:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(CI)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 97
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array p2, p2, [Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-direct {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 79
    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    return-void

    .line 80
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 81
    new-array p1, p1, [Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 82
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void

    .line 84
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 75
    iput-object p2, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 76
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V
    .locals 0

    const/16 p1, 0xa

    iput p1, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p3, p0, Lcom/google/common/base/Splitter;->limit:I

    if-nez p4, :cond_0

    .line 91
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 93
    iput-object p5, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    .line 72
    iput p3, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 10
    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    .line 87
    sget-object p1, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 88
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/Fsm;I)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->zza()V

    iput p2, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 7
    iput p2, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V
    .locals 12

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object p2

    .line 13
    iget v0, p1, Lkotlin/ranges/IntProgression;->first:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "negative nearestRange.first"

    .line 15
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 16
    :goto_0
    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 17
    iget v1, p2, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v1, v1, -0x1

    .line 18
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 19
    sget-object p1, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    const-string p2, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 21
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    .line 22
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    goto/16 :goto_6

    :cond_1
    sub-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    .line 24
    iput v0, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 25
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v2, v1}, Landroidx/collection/MutableObjectIntMap;-><init>(I)V

    .line 26
    iget-object v1, p2, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    const-string v3, ", size "

    const-string v4, "Index "

    if-ltz v0, :cond_2

    .line 28
    iget v5, p2, Lcom/google/common/base/Splitter;->limit:I

    if-ge v0, v5, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 30
    iget v6, p2, Lcom/google/common/base/Splitter;->limit:I

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_1
    if-ltz p1, :cond_3

    .line 32
    iget v5, p2, Lcom/google/common/base/Splitter;->limit:I

    if-ge p1, v5, :cond_3

    goto :goto_2

    .line 33
    :cond_3
    invoke-static {v4, p1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 34
    iget p2, p2, Lcom/google/common/base/Splitter;->limit:I

    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_2
    if-lt p1, v0, :cond_4

    goto :goto_3

    .line 36
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "toIndex ("

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") should be not smaller than fromIndex ("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 38
    :goto_3
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    move-result p2

    .line 39
    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v3, v3, p2

    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 40
    iget v3, v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    :goto_4
    if-gt v3, p1, :cond_8

    .line 41
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v4, p2

    .line 42
    check-cast v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 43
    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 44
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getKey()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 45
    iget v6, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 46
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 47
    iget v8, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    .line 48
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v7, v8, :cond_7

    :goto_5
    if-eqz v5, :cond_5

    sub-int v9, v7, v6

    .line 49
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    .line 50
    :cond_5
    new-instance v9, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    invoke-direct {v9, v7}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    .line 51
    :cond_6
    invoke-virtual {v2, v7, v9}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 52
    iget-object v10, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    .line 53
    iget v11, p0, Lcom/google/common/base/Splitter;->limit:I

    sub-int v11, v7, v11

    .line 54
    aput-object v9, v10, v11

    if-eq v7, v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 55
    :cond_7
    iget v4, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    add-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 56
    :cond_8
    iput-object v2, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    :goto_6
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/google/common/base/Splitter;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_22

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "gradient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    const-string/jumbo v5, "selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v2, v3, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v1, Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v9, v0, v2}, Lcom/google/common/base/Splitter;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    invoke-static {v0, v1, v3, v4}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v8, "startX"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    move v12, v8

    goto :goto_1

    :cond_3
    move v12, v10

    :goto_1
    const-string/jumbo v8, "startY"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const/16 v8, 0x9

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    move v13, v8

    goto :goto_2

    :cond_4
    move v13, v10

    :goto_2
    const-string v8, "endX"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const/16 v8, 0xa

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    move v14, v8

    goto :goto_3

    :cond_5
    move v14, v10

    :goto_3
    const-string v8, "endY"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const/16 v8, 0xb

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    move v15, v8

    goto :goto_4

    :cond_6
    move v15, v10

    :goto_4
    const-string v8, "centerX"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x3

    if-eqz v8, :cond_7

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    goto :goto_5

    :cond_7
    move v8, v10

    :goto_5
    const-string v9, "centerY"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    const/4 v9, 0x4

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v10

    :goto_6
    const-string/jumbo v11, "type"

    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    if-eqz v11, :cond_9

    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    goto :goto_7

    :cond_9
    move v11, v10

    :goto_7
    const-string/jumbo v6, "startColor"

    invoke-interface {v2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    goto :goto_8

    :cond_a
    move v6, v10

    :goto_8
    const-string v5, "centerColor"

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    goto :goto_9

    :cond_b
    move/from16 v20, v10

    :goto_9
    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_a

    :cond_c
    move v5, v10

    :goto_a
    const-string v10, "endColor"

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    move/from16 v21, v12

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v12, v23

    goto :goto_b

    :cond_d
    move/from16 v21, v12

    const/4 v10, 0x0

    move v12, v10

    :goto_b
    const-string/jumbo v10, "tileMode"

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    const/4 v10, 0x6

    move/from16 v22, v13

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    goto :goto_c

    :cond_e
    move/from16 v22, v13

    const/4 v10, 0x0

    :goto_c
    const-string v13, "gradientRadius"

    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    const/4 v7, 0x5

    const/4 v13, 0x0

    invoke-virtual {v4, v7, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v13, v7

    goto :goto_d

    :cond_f
    const/4 v13, 0x0

    :goto_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v24, v2

    const/16 v2, 0x14

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v25, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_e
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move/from16 v26, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_15

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v27, v15

    if-ge v14, v4, :cond_10

    const/4 v15, 0x3

    if-eq v2, v15, :cond_16

    :cond_10
    const/4 v15, 0x2

    if-eq v2, v15, :cond_12

    :cond_11
    :goto_f
    move/from16 v14, v26

    move/from16 v15, v27

    goto :goto_e

    :cond_12
    if-gt v14, v4, :cond_11

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v14, "item"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_f

    :cond_13
    sget-object v2, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v15, :cond_14

    if-eqz v19, :cond_14

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v28

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move/from16 v27, v15

    :cond_16
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, v13, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_18

    :goto_11
    const/4 v14, 0x1

    goto :goto_12

    :cond_18
    if-eqz v20, :cond_19

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, v6, v5, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(III)V

    goto :goto_11

    :cond_19
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, v6, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(II)V

    goto :goto_11

    :goto_12
    if-eq v11, v14, :cond_1d

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1c

    new-instance v11, Landroid/graphics/LinearGradient;

    iget-object v1, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, [I

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    if-eq v10, v14, :cond_1b

    if-eq v10, v15, :cond_1a

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_13
    move-object/from16 v18, v0

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v26

    move/from16 v15, v27

    goto :goto_14

    :cond_1a
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_13

    :cond_1b
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_13

    :goto_14
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_17

    :cond_1c
    new-instance v11, Landroid/graphics/SweepGradient;

    iget-object v1, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, [F

    invoke-direct {v11, v8, v9, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_17

    :cond_1d
    const/16 v17, 0x0

    cmpg-float v1, v25, v17

    if-lez v1, :cond_20

    new-instance v16, Landroid/graphics/RadialGradient;

    iget-object v1, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, [I

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [F

    const/4 v14, 0x1

    if-eq v10, v14, :cond_1f

    const/4 v15, 0x2

    if-eq v10, v15, :cond_1e

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_15
    move-object/from16 v22, v0

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v25

    goto :goto_16

    :cond_1e
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_15

    :cond_1f
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_15

    :goto_16
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v11, v16

    :goto_17
    new-instance v0, Lcom/google/common/base/Splitter;

    const/4 v1, 0x0

    const/4 v13, 0x0

    invoke-direct {v0, v11, v1, v13}, Lcom/google/common/base/Splitter;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object/from16 v24, v2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static insert$default(Lcom/google/common/base/Splitter;IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/common/base/Splitter;->limit:I

    array-length v3, v0

    if-gt v3, v2, :cond_0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    const-string v3, "copyOf(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p0, [J

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    int-to-long v4, p3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 p3, v1, 0x1

    int-to-long v2, p4

    shl-long/2addr v2, p2

    int-to-long p4, p5

    and-long/2addr p4, v6

    or-long/2addr p4, v2

    aput-wide p4, p0, p3

    add-int/lit8 p2, v1, 0x2

    const/4 p3, 0x0

    int-to-long p4, p3

    const/16 v0, 0x3f

    shl-long/2addr p4, v0

    int-to-long v2, p3

    const/16 v0, 0x3e

    shl-long/2addr v2, v0

    or-long/2addr p4, v2

    const/4 v0, 0x1

    int-to-long v2, v0

    const/16 v0, 0x3d

    shl-long/2addr v2, v0

    or-long/2addr p4, v2

    int-to-long v2, p3

    const/16 p3, 0x34

    shl-long/2addr v2, p3

    or-long/2addr p4, v2

    const v0, 0x3ffffff

    and-int v2, p6, v0

    int-to-long v3, v2

    const/16 v5, 0x1a

    shl-long/2addr v3, v5

    or-long/2addr p4, v3

    and-int/2addr p1, v0

    int-to-long v3, p1

    or-long/2addr p4, v3

    aput-wide p4, p0, p2

    if-gez p6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v1, -0x3

    :goto_0
    if-ltz p1, :cond_3

    add-int/lit8 p2, p1, 0x2

    aget-wide p4, p0, p2

    long-to-int p6, p4

    and-int/2addr p6, v0

    if-ne p6, v2, :cond_2

    sub-int/2addr v1, p1

    const-wide v2, -0x1ff0000000000001L    # -5.363123171977038E154

    and-long/2addr p4, v2

    and-int/lit16 p1, v1, 0x1ff

    int-to-long v0, p1

    shl-long/2addr v0, p3

    or-long p3, p4, v0

    aput-wide p3, p0, p2

    return-void

    :cond_2
    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V
    .locals 2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "size should be >=0"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    iget p2, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/common/base/Splitter;->limit:I

    iget-object p0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public applySupportImageTint()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_1
    return-void
.end method

.method public buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez v1, :cond_16

    iget v1, v0, Lcom/google/common/base/Splitter;->limit:I

    iget-object v2, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    goto/16 :goto_c

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    aget-object v1, v2, v5

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    array-length v6, v2

    shr-int/2addr v6, v3

    invoke-static {v1, v6}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v1, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v3

    move/from16 v17, v5

    :goto_0
    move/from16 v18, v7

    goto/16 :goto_b

    :cond_2
    add-int/lit8 v8, v6, -0x1

    const/16 v9, 0x80

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-gt v6, v9, :cond_8

    new-array v6, v6, [B

    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([BB)V

    move v9, v5

    move v11, v9

    :goto_1
    if-ge v9, v1, :cond_6

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v11, 0x2

    aget-object v14, v2, v12

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v3

    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, Lcom/google/common/collect/Maps;->smear(I)I

    move-result v15

    :goto_2
    and-int/2addr v15, v8

    move/from16 v16, v3

    aget-byte v3, v6, v15

    move/from16 v17, v5

    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    int-to-byte v3, v13

    aput-byte v3, v6, v15

    if-ge v11, v9, :cond_3

    aput-object v14, v2, v13

    xor-int/lit8 v3, v13, 0x1

    aput-object v12, v2, v3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    aget-object v5, v2, v3

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v3, v3, 0x1

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v14, v12, v5}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v3

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    move/from16 v5, v17

    goto :goto_1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v5, v17

    goto :goto_2

    :cond_6
    move/from16 v16, v3

    move/from16 v17, v5

    if-ne v11, v1, :cond_7

    move-object v4, v6

    goto :goto_0

    :cond_7
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v6, v3, v17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v16

    aput-object v4, v3, v7

    :goto_4
    move-object v4, v3

    goto :goto_0

    :cond_8
    move/from16 v16, v3

    move/from16 v17, v5

    const v3, 0x8000

    if-gt v6, v3, :cond_e

    new-array v3, v6, [S

    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([SS)V

    move/from16 v5, v17

    move v6, v5

    :goto_5
    if-ge v5, v1, :cond_c

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    aget-object v12, v2, v9

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v9, v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/common/collect/Maps;->smear(I)I

    move-result v13

    :goto_6
    and-int/2addr v13, v8

    aget-short v14, v3, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_a

    int-to-short v14, v11

    aput-short v14, v3, v13

    if-ge v6, v5, :cond_9

    aput-object v12, v2, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v9, v2, v11

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    aget-object v15, v2, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, v2, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v12, v9, v13}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v11

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_c
    if-ne v6, v1, :cond_d

    goto :goto_4

    :cond_d
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v16

    aput-object v4, v5, v7

    move-object v4, v5

    goto/16 :goto_0

    :cond_e
    new-array v3, v6, [I

    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([II)V

    move/from16 v5, v17

    move v6, v5

    :goto_8
    if-ge v5, v1, :cond_12

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v12, v6, 0x2

    aget-object v13, v2, v9

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v9, v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/common/collect/Maps;->smear(I)I

    move-result v14

    :goto_9
    and-int/2addr v14, v8

    aget v15, v3, v14

    if-ne v15, v11, :cond_10

    aput v12, v3, v14

    if-ge v6, v5, :cond_f

    aput-object v13, v2, v12

    xor-int/lit8 v12, v12, 0x1

    aput-object v9, v2, v12

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v7

    goto :goto_a

    :cond_10
    move/from16 v18, v7

    aget-object v7, v2, v15

    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v7, v15, 0x1

    aget-object v12, v2, v7

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v13, v9, v12}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v7

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v18

    goto :goto_8

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v18

    goto :goto_9

    :cond_12
    move/from16 v18, v7

    if-ne v6, v1, :cond_13

    move-object v4, v3

    goto :goto_b

    :cond_13
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v16

    aput-object v4, v5, v18

    move-object v4, v5

    :goto_b
    instance-of v3, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_14

    check-cast v4, [Ljava/lang/Object;

    aget-object v1, v4, v18

    check-cast v1, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    iput-object v1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    aget-object v1, v4, v17

    aget-object v3, v4, v16

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v1

    move v1, v3

    :cond_14
    new-instance v3, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v3, v1, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    move-object v1, v3

    :goto_c
    iget-object v0, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    array-length p0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public get(Lcom/motorola/camera/thumbnail/ThumbnailKey;)Landroid/util/Pair;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/thumbnail/ThumbnailKey;->getMajorCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/thumbnail/ThumbnailKey;->getMinorCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 6
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 3

    if-ltz p1, :cond_0

    .line 17
    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "Index "

    const-string v1, ", size "

    .line 19
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    if-eqz v0, :cond_1

    .line 23
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 24
    iget v2, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    if-gt v1, p1, :cond_1

    return-object v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    move-result p1

    .line 26
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p1, v0, p1

    .line 27
    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/base/Splitter;->getDiskCache()Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->get(Ljava/lang/String;)Lcom/motorola/camera/SecureDataHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, [Ljava/io/File;

    const/4 v1, 0x0

    aget-object p0, p0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get from disk cache fro key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LruDiskCacheWrapper"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 9
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 10
    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/base/Splitter;->limit:I

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 12
    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/base/Splitter;->limit:I

    goto :goto_1

    .line 13
    :cond_2
    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getDiskCache()Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->open(Ljava/io/File;J)Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    const-string v1, "UTF-8"

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iput-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v3, [B

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const-string v5, "UTF-32"

    const/16 v6, 0xfe

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/16 v9, 0xff

    if-nez v4, :cond_4

    if-lt v0, v8, :cond_3

    aget-byte v0, v3, v7

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v0, v3, v2

    and-int/2addr v0, v9

    if-ne v0, v6, :cond_2

    const/4 v0, 0x3

    aget-byte v0, v3, v0

    and-int/2addr v0, v9

    if-ne v0, v9, :cond_2

    const-string v0, "UTF-32BE"

    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_2
    iput-object v5, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_0
    const-string v0, "UTF-16BE"

    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    and-int/lit16 v10, v4, 0xff

    const/16 v11, 0x80

    if-ge v10, v11, :cond_8

    aget-byte v4, v3, v7

    if-eqz v4, :cond_5

    iput-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-lt v0, v8, :cond_7

    aget-byte v0, v3, v2

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "UTF-32LE"

    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_1
    const-string v0, "UTF-16LE"

    iput-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_8
    and-int/lit16 v7, v4, 0xff

    const/16 v10, 0xef

    if-ne v7, v10, :cond_9

    iput-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_9
    and-int/lit16 v1, v4, 0xff

    const-string v4, "UTF-16"

    if-ne v1, v6, :cond_a

    iput-object v4, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_a
    if-lt v0, v8, :cond_c

    aget-byte v0, v3, v2

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    iput-object v5, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    goto :goto_3

    :cond_c
    :goto_2
    iput-object v4, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    sub-int/2addr p1, p0

    if-ltz p1, :cond_0

    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    if-gt p1, p0, :cond_0

    aget-object p0, v0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v2

    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-eqz v4, :cond_1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Landroidx/compose/ui/unit/DpSize;

    move-result-object v4

    sget-object v5, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v2

    if-ltz v4, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    if-eq v3, v4, :cond_2

    const-string v4, "[\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\']"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoleFlags()I
    .locals 1

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x200

    return p0

    :cond_1
    const/16 p0, 0x800

    return p0
.end method

.method public handleError(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    const-string v0, "exception in codecLooper"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 2

    const-string v0, "mediaCodec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "getOutputFormat(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->orientationHint:I

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    :cond_0
    return-void
.end method

.method public handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v0, v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    iget-object p0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v2, "take(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object p1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    const-string p1, "handleInput: input buffer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleInput: cannot get buffer, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 5

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/google/common/base/Splitter;->limit:I

    iget-object v4, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-eqz p0, :cond_3

    iget p1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_3
    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object p0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    invoke-static {p0, p1, v2, p2}, Landroidx/core/view/MenuHostHelper;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/core/view/MenuHostHelper;

    move-result-object p0

    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/content/res/TypedArray;

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v7, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->recycle()V

    throw p1
.end method

.method public onSeekFinished()V
    .locals 2

    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 15
    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 16
    iget-object v1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 17
    array-length v2, v1

    .line 18
    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->expandedCapacity(II)I

    move-result v0

    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 21
    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 22
    iput v1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "null value in entry: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "=null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "null key in entry: null="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public put(Ljava/lang/String;Lcom/motorola/camera/ui/DownUpDetector;)V
    .locals 3

    .line 1
    const-string v0, "LruDiskCacheWrapper"

    const-string v1, "Can\'t load disk editor for: "

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/base/Splitter;->getDiskCache()Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->get(Ljava/lang/String;)Lcom/motorola/camera/SecureDataHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->edit(Ljava/lang/String;)Landroidx/compose/runtime/Latch;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->getFile()Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/DownUpDetector;->encode(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->-$$Nest$mcompleteEdit(Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;Landroidx/compose/runtime/Latch;Z)V

    .line 8
    iput-boolean p2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_2
    :try_start_2
    iget-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_3

    .line 10
    :try_start_3
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->abort()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_4
    iget-boolean p2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez p2, :cond_4

    .line 12
    :try_start_5
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 13
    :catch_2
    :cond_4
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 14
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const v1, 0x1b8a0

    int-to-long v1, v1

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v1, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const-wide/16 v6, -0x1

    move-wide v10, v6

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v12, 0xbc

    if-lt v3, v12, :cond_7

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_1
    if-ge v12, v1, :cond_0

    aget-byte v13, v3, v12

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v8, 0x47

    if-eq v13, v8, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1
    add-int/lit16 v3, v12, 0xbc

    if-le v3, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v6, v0, Lcom/google/common/base/Splitter;->limit:I

    invoke-static {v2, v12, v6}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v6

    cmp-long v8, v6, v16

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v8, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-lez v8, :cond_4

    cmp-long v0, v14, v16

    if-nez v0, :cond_3

    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0

    :cond_3
    add-long v16, v4, v10

    new-instance v12, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v12 .. v17}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v12

    :cond_4
    move-wide v14, v6

    const-wide/32 v6, 0x186a0

    add-long/2addr v6, v14

    cmp-long v6, v6, p2

    if-lez v6, :cond_5

    int-to-long v0, v12

    add-long v10, v4, v0

    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6

    :cond_5
    int-to-long v6, v12

    move-wide v10, v6

    :cond_6
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    int-to-long v6, v3

    goto :goto_0

    :cond_7
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    cmp-long v0, v14, v16

    if-eqz v0, :cond_8

    add-long v16, v4, v6

    new-instance v12, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v13, -0x2

    invoke-direct/range {v12 .. v17}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v12

    :cond_8
    sget-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v0
.end method

.method public splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iget-object v0, v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/base/CharMatcher$Is;

    new-instance v1, Lcom/google/common/base/Splitter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/CharMatcher$Is;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/base/Splitter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/base/Splitter;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public withRect(ILkotlin/jvm/functions/Function4;)V
    .locals 6

    const v0, 0x3ffffff

    and-int/2addr p1, v0

    iget-object v1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, [J

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_1

    if-ge v2, p0, :cond_1

    add-int/lit8 v3, v2, 0x2

    aget-wide v3, v1, v3

    long-to-int v3, v3

    and-int/2addr v3, v0

    if-ne v3, p1, :cond_0

    aget-wide p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v0, v1, v2

    const/16 v2, 0x20

    shr-long v3, p0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    shr-long v4, v0, v2

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v3, p0, p1, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V
    .locals 4

    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    add-int/2addr v0, v0

    if-le v0, v2, :cond_3

    if-ltz v0, :cond_2

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int v2, v0, v0

    :cond_0
    if-gez v2, :cond_1

    const v2, 0x7fffffff

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    add-int v2, v1, v1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public zze(I)[B
    .locals 11

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/Fsm;

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const/4 v4, 0x1

    if-eq v4, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzi:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzg:Ljava/lang/Boolean;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->zza()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    if-nez p1, :cond_1

    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;-><init>(Lcom/motorola/camera/fsm/Fsm;)V

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    iput-boolean v4, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    iget-object v7, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    iget-boolean v10, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/StringWriter;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    invoke-virtual {v5, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    iget-object p0, v5, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;-><init>(Lcom/motorola/camera/fsm/Fsm;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzc:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzd:Ljava/io/Serializable;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzff;

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zze:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    new-instance p0, Ljava/util/HashMap;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzc:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {p0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzd:Ljava/io/Serializable;

    check-cast v3, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zze:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzff;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfg;

    invoke-direct {v4, v3, p0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfg;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, v4}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No encoder for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    return-object p0

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
