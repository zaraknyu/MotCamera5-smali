.class public final synthetic Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget p0, p0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :goto_0
    mul-int/2addr p1, p0

    sub-int/2addr p2, p1

    return p2

    :pswitch_0
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result p0

    invoke-static {p2}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :pswitch_1
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    neg-int p0, p0

    return p0

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    check-cast p2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    iget-object p1, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p1

    sget-object p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v0, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    iget-object p2, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p2

    invoke-static {p1, p2}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    move p1, v1

    :cond_1
    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_5
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto/16 :goto_0

    :pswitch_6
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_2
    return p0

    :pswitch_8
    check-cast p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget p0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    iget v0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v0, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p1, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p1, p2, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_3
    return p0

    :pswitch_9
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    iget-wide p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    iget-wide v0, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    iget-object p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    iget-object p1, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    check-cast p2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget p0, p2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    iget p1, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    check-cast p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    iget p1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    check-cast p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    iget p1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_e
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    if-eqz p0, :cond_7

    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    goto :goto_4

    :cond_7
    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object p0

    :goto_4
    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    invoke-virtual {v2, p1, v1, p0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$mN6XX8i7M4d49ufL_31PyFTAA68(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0

    :pswitch_12
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    new-instance p0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->$r8$lambda$mN6XX8i7M4d49ufL_31PyFTAA68(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0

    :pswitch_13
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->pixelCount:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_14
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v0, p0, p1

    :cond_a
    :goto_5
    return v0

    :pswitch_15
    check-cast p1, Landroidx/media3/common/Format;

    check-cast p2, Landroidx/media3/common/Format;

    iget p0, p2, Landroidx/media3/common/Format;->bitrate:I

    iget p1, p1, Landroidx/media3/common/Format;->bitrate:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_16
    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_b

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    goto :goto_7

    :cond_b
    const/4 p0, 0x0

    move v0, p0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_d

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_c

    sub-int p0, v1, v2

    goto :goto_7

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    return p0

    :pswitch_17
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/Pair;

    iget-object p0, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object p1, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    iget-object p1, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p0, p1

    return p0

    :pswitch_18
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    cmpg-float v1, p0, v0

    if-nez v1, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui_release()I

    move-result p0

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui_release()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    goto :goto_8

    :cond_e
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    :goto_8
    return p0

    :pswitch_19
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    check-cast p2, Landroidx/compose/runtime/Invalidation;

    iget p0, p1, Landroidx/compose/runtime/Invalidation;->location:I

    iget p1, p2, Landroidx/compose/runtime/Invalidation;->location:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    :pswitch_1a
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result p0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    check-cast p2, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-static {p0}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result p0

    iget-object v1, p2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v2, p2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-static {v1}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result v1

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-le p0, v1, :cond_f

    goto :goto_9

    :cond_f
    if-ge p0, v1, :cond_10

    goto :goto_a

    :cond_10
    if-le p1, p2, :cond_11

    goto :goto_9

    :cond_11
    if-ge p1, p2, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p0, p1, :cond_13

    :goto_9
    const/4 p0, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_14

    :goto_a
    const/4 p0, -0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    :goto_b
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
