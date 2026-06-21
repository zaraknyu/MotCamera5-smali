.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final hasCaptionRoleFlags:Z

.field public final isDefault:Z

.field public final isForced:Z

.field public final isWithinRendererCapabilities:Z

.field public final preferredLanguageIndex:I

.field public final preferredLanguageScore:I

.field public final preferredRoleFlagsScore:I

.field public final selectedAudioLanguageScore:I

.field public final selectionEligibility:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->selectionFlags:I

    iget p3, p4, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iget-object v0, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz p7, :cond_2

    invoke-static {p7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const v3, 0x7fffffff

    if-ge p3, v2, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    move v2, p1

    move p3, v3

    :goto_4
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    iput v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    :cond_6
    move p3, p1

    :goto_5
    iget-object p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p7, p7, Landroidx/media3/common/Format;->roleFlags:I

    sget-object v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    if-eqz p7, :cond_7

    if-ne p7, p3, :cond_7

    goto :goto_6

    :cond_7
    and-int/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    :goto_6
    iput v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->roleFlags:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-static {p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    move p2, v1

    goto :goto_8

    :cond_9
    move p2, p1

    :goto_8
    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-static {p3, p6, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    if-gtz v2, :cond_c

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    if-gtz v3, :cond_c

    :cond_a
    iget-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    if-nez p3, :cond_c

    iget-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz p3, :cond_b

    if-lez p2, :cond_b

    goto :goto_9

    :cond_b
    move p2, p1

    goto :goto_a

    :cond_c
    :goto_9
    move p2, v1

    :goto_a
    iget-boolean p3, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p5, p3}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p3

    if-eqz p3, :cond_d

    if-eqz p2, :cond_d

    move p1, v1

    :cond_d
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I
    .locals 7

    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 3
    sget-object v2, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ComparisonChain$1;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    sget-object v4, Lcom/google/common/collect/NaturalOrdering;->INSTANCE$1:Lcom/google/common/collect/NaturalOrdering;

    .line 7
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    .line 8
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 9
    iget v5, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    invoke-virtual {v0, v5, v1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    iget-boolean v6, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    .line 10
    invoke-virtual {v0, v1, v6}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v6, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 12
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 13
    :goto_0
    invoke-virtual {v0, v1, v6, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    if-nez v5, :cond_1

    .line 15
    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p0

    return p0
.end method

.method public final getSelectionEligibility()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return p0
.end method

.method public final bridge synthetic isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    const/4 p0, 0x0

    return p0
.end method
