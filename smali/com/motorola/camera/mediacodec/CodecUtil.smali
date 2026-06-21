.class public abstract Lcom/motorola/camera/mediacodec/CodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/mediacodec/CodecUtil;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public static final findTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "getTrackFormat(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p1, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final getProfileLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static final processTrack(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/util/ArrayList;)V
    .locals 25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-static/range {p3 .. p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    check-cast v4, Landroid/util/Pair;

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_3
    const/4 v7, 0x0

    move v8, v7

    move v11, v8

    const-wide/16 v9, 0x0

    :goto_2
    if-nez v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v12

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v14

    move v15, v7

    const-wide/16 v16, 0x0

    :goto_3
    int-to-long v3, v14

    cmp-long v3, v3, v12

    if-gez v3, :cond_4

    mul-int/lit8 v14, v14, 0x2

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    if-eqz v15, :cond_5

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_5
    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    if-gez v12, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    cmp-long v15, v5, v16

    if-lez v15, :cond_7

    cmp-long v15, v13, v5

    if-ltz v15, :cond_7

    move-object/from16 v4, p1

    move-object/from16 v20, v2

    move v2, v7

    const/4 v8, 0x1

    :goto_4
    move/from16 v7, p2

    goto/16 :goto_6

    :cond_7
    cmp-long v15, v13, v16

    if-ltz v15, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v4, v7

    move/from16 v18, v4

    :goto_5
    if-ge v4, v15, :cond_a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x1

    add-long v21, v21, v23

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    cmp-long v19, v13, v23

    if-gez v19, :cond_9

    cmp-long v19, v21, v13

    if-gtz v19, :cond_9

    move-object/from16 v19, v2

    add-int/lit8 v2, v4, 0x1

    if-eq v11, v2, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v18, v18, v21

    add-long v9, v18, v9

    move v11, v2

    :cond_8
    const/16 v18, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v20, v2

    if-nez v18, :cond_b

    iput v12, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    sub-long/2addr v13, v9

    iput-wide v13, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual {v4, v7, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_6

    :cond_b
    move-object/from16 v4, p1

    move/from16 v7, p2

    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v4, p1

    move-object/from16 v20, v2

    move v2, v7

    goto/16 :goto_4

    :goto_6
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    move v7, v2

    move-object/from16 v2, v20

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public static final selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 10

    invoke-static {}, Lcom/motorola/camera/Util;->getHardWare()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "ENGLISH"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-static {v9, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Can\'t find codec to support hardWare:%s mineType:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get codec infos"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
