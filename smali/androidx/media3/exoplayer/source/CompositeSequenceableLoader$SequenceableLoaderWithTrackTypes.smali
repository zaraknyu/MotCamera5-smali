.class public final Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# instance fields
.field public final loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field public final trackTypes:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SequenceableLoader;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->trackTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p0

    return p0
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->loader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method
