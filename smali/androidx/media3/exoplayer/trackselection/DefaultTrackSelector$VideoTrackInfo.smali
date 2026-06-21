.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "SourceFile"


# instance fields
.field public final allowMixedMimeTypes:Z

.field public final bitrate:I

.field public final codecPreferenceScore:I

.field public final hasMainOrNoRoleFlag:Z

.field public final hasReasonableFrameRate:Z

.field public final isWithinMaxConstraints:Z

.field public final isWithinMinConstraints:Z

.field public final isWithinRendererCapabilities:Z

.field public final parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final pixelCount:I

.field public final preferredLanguageIndex:I

.field public final preferredLanguageScore:I

.field public final preferredMimeTypeMatchIndex:I

.field public final preferredRoleFlagsScore:I

.field public final selectedAudioLanguageScore:I

.field public final selectionEligibility:I

.field public final usesHardwareAcceleration:Z

.field public final usesPrimaryDecoder:Z


# direct methods
.method public static $r8$lambda$mN6XX8i7M4d49ufL_31PyFTAA68(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    sget-object v2, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ComparisonChain$1;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/NaturalOrdering;->INSTANCE$1:Lcom/google/common/collect/NaturalOrdering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageScore:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectedAudioLanguageScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectedAudioLanguageScore:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasReasonableFrameRate:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasReasonableFrameRate:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;IZ)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iget-object p2, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object p3, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p7, 0x0

    iput-boolean p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->allowMixedMimeTypes:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p8, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget v4, v3, Landroidx/media3/common/Format;->width:I

    if-eq v4, v1, :cond_1

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    if-gt v4, v5, :cond_5

    :cond_1
    iget v4, v3, Landroidx/media3/common/Format;->height:I

    if-eq v4, v1, :cond_2

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    if-gt v4, v5, :cond_5

    :cond_2
    iget v4, v3, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    :cond_3
    iget v3, v3, Landroidx/media3/common/Format;->bitrate:I

    if-eq v3, v1, :cond_4

    iget p4, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    if-gt v3, p4, :cond_5

    :cond_4
    move p4, v2

    goto :goto_1

    :cond_5
    move p4, p7

    :goto_1
    iput-boolean p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz p8, :cond_a

    iget-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p8, p4, Landroidx/media3/common/Format;->width:I

    if-eq p8, v1, :cond_6

    if-ltz p8, :cond_a

    :cond_6
    iget p8, p4, Landroidx/media3/common/Format;->height:I

    if-eq p8, v1, :cond_7

    if-ltz p8, :cond_a

    :cond_7
    iget p8, p4, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v3, p8, v0

    if-eqz v3, :cond_8

    int-to-float v3, p7

    cmpl-float p8, p8, v3

    if-ltz p8, :cond_a

    :cond_8
    iget p4, p4, Landroidx/media3/common/Format;->bitrate:I

    if-eq p4, v1, :cond_9

    if-ltz p4, :cond_a

    :cond_9
    move p4, v2

    goto :goto_2

    :cond_a
    move p4, p7

    :goto_2
    iput-boolean p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    invoke-static {p5, p7}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    iget-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p8, p4, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v0, p8, v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p8, p8, v0

    if-ltz p8, :cond_b

    move p8, v2

    goto :goto_3

    :cond_b
    move p8, p7

    :goto_3
    iput-boolean p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasReasonableFrameRate:Z

    iget p8, p4, Landroidx/media3/common/Format;->bitrate:I

    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    iget p8, p4, Landroidx/media3/common/Format;->width:I

    if-eq p8, v1, :cond_d

    iget p4, p4, Landroidx/media3/common/Format;->height:I

    if-ne p4, v1, :cond_c

    goto :goto_4

    :cond_c
    mul-int/2addr p8, p4

    goto :goto_5

    :cond_d
    :goto_4
    move p8, v1

    :goto_5
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    move p4, p7

    :goto_6
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p8

    const v0, 0x7fffffff

    if-ge p4, p8, :cond_f

    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p8, v3, p7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_f
    move p8, p7

    move p4, v0

    :goto_7
    iput p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageIndex:I

    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredLanguageScore:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->roleFlags:I

    sget-object p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    if-eqz p3, :cond_10

    if-nez p3, :cond_10

    move p3, v0

    goto :goto_8

    :cond_10
    invoke-static {p7}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_8
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->roleFlags:I

    if-eqz p3, :cond_12

    and-int/2addr p3, v2

    if-eqz p3, :cond_11

    goto :goto_9

    :cond_11
    move p3, p7

    goto :goto_a

    :cond_12
    :goto_9
    move p3, v2

    :goto_a
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    invoke-static {p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_13

    move p3, v2

    goto :goto_b

    :cond_13
    move p3, p7

    :goto_b
    iget-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-static {p4, p6, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectedAudioLanguageScore:I

    move p3, p7

    :goto_c
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge p3, p4, :cond_15

    iget-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object p4, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p4, :cond_14

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    move v0, p3

    goto :goto_d

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_15
    :goto_d
    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    and-int/lit16 p2, p5, 0x180

    const/16 p3, 0x80

    if-ne p2, p3, :cond_16

    move p2, v2

    goto :goto_e

    :cond_16
    move p2, p7

    :goto_e
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p3, 0x40

    if-ne p2, p3, :cond_17

    move p2, v2

    goto :goto_f

    :cond_17
    move p2, p7

    :goto_f
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object p3, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 p4, 0x2

    if-nez p3, :cond_18

    goto :goto_12

    :cond_18
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p6

    const/4 p8, 0x4

    const/4 v0, 0x3

    sparse-switch p6, :sswitch_data_0

    :goto_10
    move p3, v1

    goto :goto_11

    :sswitch_0
    const-string/jumbo p6, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_19

    goto :goto_10

    :cond_19
    move p3, p8

    goto :goto_11

    :sswitch_1
    const-string/jumbo p6, "video/avc"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_10

    :cond_1a
    move p3, v0

    goto :goto_11

    :sswitch_2
    const-string/jumbo p6, "video/hevc"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1b

    goto :goto_10

    :cond_1b
    move p3, p4

    goto :goto_11

    :sswitch_3
    const-string/jumbo p6, "video/av01"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1c

    goto :goto_10

    :cond_1c
    move p3, v2

    goto :goto_11

    :sswitch_4
    const-string/jumbo p6, "video/dolby-vision"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1d

    goto :goto_10

    :cond_1d
    move p3, p7

    :goto_11
    packed-switch p3, :pswitch_data_0

    :goto_12
    move p8, p7

    goto :goto_13

    :pswitch_0
    move p8, p4

    goto :goto_13

    :pswitch_1
    move p8, v2

    goto :goto_13

    :pswitch_2
    move p8, v0

    goto :goto_13

    :pswitch_3
    const/4 p8, 0x5

    :goto_13
    :pswitch_4
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    iget-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    iget-object p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget p8, p2, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 p8, p8, 0x4000

    if-eqz p8, :cond_1e

    goto :goto_14

    :cond_1e
    iget-boolean p8, p6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p5, p8}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p8

    if-nez p8, :cond_1f

    goto :goto_14

    :cond_1f
    if-nez p3, :cond_20

    iget-boolean p6, p6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez p6, :cond_20

    goto :goto_14

    :cond_20
    invoke-static {p5, p7}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p6

    if-eqz p6, :cond_21

    iget-boolean p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    if-eqz p6, :cond_21

    if-eqz p3, :cond_21

    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    if-eq p2, v1, :cond_21

    and-int/2addr p1, p5

    if-eqz p1, :cond_21

    move p7, p4

    goto :goto_14

    :cond_21
    move p7, v2

    :goto_14
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectionEligibility:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getSelectionEligibility()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectionEligibility:I

    return p0
.end method

.method public final isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 2

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->allowMixedMimeTypes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
