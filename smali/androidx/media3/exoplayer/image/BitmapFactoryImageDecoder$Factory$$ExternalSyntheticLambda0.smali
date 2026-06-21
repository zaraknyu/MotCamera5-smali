.class public final synthetic Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lcom/google/common/base/Function;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 2
    const/4 p1, 0x6

    iput p1, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 3
    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(I[B)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Landroidx/media3/datasource/BitmapUtil;->decode(I[B)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/exoplayer/image/ImageDecoderException;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/image/ImageDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not decode image data with BitmapFactory. (data.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", input length = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p0, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v0, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :sswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/common/text/Cue;

    iget-object v7, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v9, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    sget-object v10, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    instance-of v10, v9, Landroid/text/Spanned;

    if-eqz v10, :cond_5

    check-cast v9, Landroid/text/Spanned;

    sget-object v10, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroidx/media3/common/text/RubySpan;

    invoke-interface {v9, v6, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroidx/media3/common/text/RubySpan;

    array-length v12, v11

    move v13, v6

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/text/RubySpan;->FIELD_TEXT:Ljava/lang/String;

    iget-object v2, v14, Landroidx/media3/common/text/RubySpan;->rubyText:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/text/RubySpan;->FIELD_POSITION:Ljava/lang/String;

    iget v2, v14, Landroidx/media3/common/text/RubySpan;->position:I

    invoke-virtual {v15, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v9, v14, v5, v15}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/TextEmphasisSpan;

    invoke-interface {v9, v6, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/TextEmphasisSpan;

    array-length v2, v1

    move v5, v6

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v11, v1, v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    sget-object v13, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_MARK_SHAPE:Ljava/lang/String;

    iget v14, v11, Landroidx/media3/common/text/TextEmphasisSpan;->markShape:I

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v13, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_MARK_FILL:Ljava/lang/String;

    iget v14, v11, Landroidx/media3/common/text/TextEmphasisSpan;->markFill:I

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v13, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_POSITION:Ljava/lang/String;

    iget v14, v11, Landroidx/media3/common/text/TextEmphasisSpan;->position:I

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v9, v11, v4, v12}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-interface {v9, v6, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    array-length v2, v1

    move v4, v6

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    const/4 v11, 0x0

    invoke-static {v9, v5, v3, v11}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroidx/media3/common/text/VoiceSpan;

    invoke-interface {v9, v6, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/text/VoiceSpan;

    array-length v2, v1

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v11, Landroidx/media3/common/text/VoiceSpan;->FIELD_NAME:Ljava/lang/String;

    iget-object v12, v4, Landroidx/media3/common/text/VoiceSpan;->name:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x4

    invoke-static {v9, v4, v11, v5}, Landroidx/media3/common/text/CustomSpanBundler;->spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    invoke-virtual {v8, v1, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->line:F

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->lineType:I

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->position:F

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->size:F

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    iget-boolean v2, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    iget v0, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    if-eqz v7, :cond_6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v1, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6
    return-object v8

    :sswitch_1
    const/4 v11, 0x0

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_CUSTOM_SPANS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    sget-object v8, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_END_INDEX:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_FLAGS:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sget-object v12, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_TYPE:Ljava/lang/String;

    const/4 v13, -0x1

    invoke-virtual {v7, v12, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v13, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_PARAMS:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eq v12, v5, :cond_a

    if-eq v12, v4, :cond_9

    if-eq v12, v3, :cond_8

    const/4 v13, 0x4

    if-eq v12, v13, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroidx/media3/common/text/VoiceSpan;

    sget-object v14, Landroidx/media3/common/text/VoiceSpan;->FIELD_NAME:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v7}, Landroidx/media3/common/text/VoiceSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v12, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_8
    const/4 v13, 0x4

    new-instance v7, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_9
    const/4 v13, 0x4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroidx/media3/common/text/TextEmphasisSpan;

    sget-object v14, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_MARK_SHAPE:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    sget-object v15, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_MARK_FILL:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v15

    sget-object v3, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v12, v14, v15, v3}, Landroidx/media3/common/text/TextEmphasisSpan;-><init>(III)V

    invoke-interface {v1, v12, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_a
    const/4 v13, 0x4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/common/text/RubySpan;

    sget-object v12, Landroidx/media3/common/text/RubySpan;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/media3/common/text/RubySpan;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v12, v7}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    const/4 v3, 0x3

    goto/16 :goto_4

    :cond_b
    move-object v15, v1

    goto :goto_6

    :cond_c
    move-object v15, v11

    :goto_6
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_d

    move-object/from16 v16, v1

    goto :goto_7

    :cond_d
    move-object/from16 v16, v11

    :goto_7
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_e

    move-object/from16 v17, v1

    goto :goto_8

    :cond_e
    move-object/from16 v17, v11

    :goto_8
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_PARCELABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    move-object/from16 v18, v1

    goto :goto_9

    :cond_f
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_BYTES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_10

    array-length v2, v1

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_9

    :cond_10
    move-object/from16 v18, v11

    :goto_9
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const v3, -0x800001

    const/high16 v4, -0x80000000

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v1

    move/from16 v20, v2

    goto :goto_a

    :cond_11
    move/from16 v19, v3

    move/from16 v20, v4

    :goto_a
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    goto :goto_b

    :cond_12
    move/from16 v21, v4

    :goto_b
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    move/from16 v22, v1

    goto :goto_c

    :cond_13
    move/from16 v22, v3

    :goto_c
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    goto :goto_d

    :cond_14
    move/from16 v23, v4

    :goto_d
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v1

    move/from16 v24, v2

    goto :goto_e

    :cond_15
    move/from16 v25, v3

    move/from16 v24, v4

    :goto_e
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    move/from16 v26, v1

    goto :goto_f

    :cond_16
    move/from16 v26, v3

    :goto_f
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    :cond_17
    move/from16 v27, v3

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_10
    move/from16 v29, v1

    goto :goto_11

    :cond_18
    const/high16 v1, -0x1000000

    move v5, v6

    goto :goto_10

    :goto_11
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    move/from16 v28, v6

    goto :goto_12

    :cond_19
    move/from16 v28, v5

    :goto_12
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_1a
    move/from16 v30, v4

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    :goto_13
    move/from16 v31, v0

    goto :goto_14

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13

    :goto_14
    new-instance v14, Landroidx/media3/common/text/Cue;

    invoke-direct/range {v14 .. v31}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v14

    :sswitch_2
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/extractor/mp4/Track;

    return-object v0

    :sswitch_3
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v0, v0, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :sswitch_4
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v0, v0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :sswitch_5
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/common/TrackGroup;

    iget v0, v0, Landroidx/media3/common/TrackGroup;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_6
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    new-instance v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :sswitch_7
    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    iget p0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/collection/internal/Lock;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Landroidx/media3/extractor/flac/FlacExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Landroidx/media3/extractor/amr/AmrExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>()V

    filled-new-array {p0}, [Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4

    iget p0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x0

    const-class v1, Landroidx/media3/extractor/Extractor;

    packed-switch p0, :pswitch_data_0

    const-string p0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAvailable"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
