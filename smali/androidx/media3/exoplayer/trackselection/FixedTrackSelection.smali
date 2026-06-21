.class public final Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final formats:[Landroidx/media3/common/Format;

.field public final group:Landroidx/media3/common/TrackGroup;

.field public hashCode:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;[I)V
    .locals 4

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    array-length p2, p3

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->length:I

    new-array p2, p2, [Landroidx/media3/common/Format;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->formats:[Landroidx/media3/common/Format;

    move p2, v0

    :goto_1
    array-length v1, p3

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget v2, p3, p2

    aget-object v2, p1, v2

    aput-object v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->formats:[Landroidx/media3/common/Format;

    new-instance p3, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {p3, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    move p2, v0

    :goto_2
    iget p3, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->length:I

    if-ge p2, p3, :cond_4

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object v1, v1, p2

    move v2, v0

    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    if-ne v1, v3, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    :goto_4
    aput v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    new-array p0, p3, [J

    return-void
.end method

.method public static addCheckpoint(Ljava/util/ArrayList;[J)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final disable$androidx$media3$exoplayer$trackselection$AdaptiveTrackSelection()V
    .locals 0

    return-void
.end method

.method private final enable$androidx$media3$exoplayer$trackselection$AdaptiveTrackSelection()V
    .locals 0

    return-void
.end method

.method private final onPlaybackSpeed$androidx$media3$exoplayer$trackselection$AdaptiveTrackSelection(F)V
    .locals 0

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->$r8$classId:I

    return-void
.end method

.method public final disable$androidx$media3$exoplayer$trackselection$BaseTrackSelection()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->$r8$classId:I

    return-void
.end method

.method public final enable$androidx$media3$exoplayer$trackselection$BaseTrackSelection()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getFormat(I)Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getSelectedFormat()Landroidx/media3/common/Format;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->formats:[Landroidx/media3/common/Format;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public final getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->hashCode:I

    return p0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->tracks:[I

    array-length p0, p0

    return p0
.end method

.method public final onPlayWhenReadyChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->$r8$classId:I

    return-void
.end method

.method public final onPlaybackSpeed$androidx$media3$exoplayer$trackselection$BaseTrackSelection(F)V
    .locals 0

    return-void
.end method
