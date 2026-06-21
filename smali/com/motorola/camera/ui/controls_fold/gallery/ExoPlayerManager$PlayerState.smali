.class public final Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final playWhenReady:Z

.field public final playbackPosition:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-wide p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playbackPosition:J

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playWhenReady:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playbackPosition:J

    iget-wide v5, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playbackPosition:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playWhenReady:Z

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playWhenReady:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->mediaItem:Landroidx/media3/common/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playbackPosition:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playWhenReady:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayerState(mediaItem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playbackPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playWhenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager$PlayerState;->playWhenReady:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
