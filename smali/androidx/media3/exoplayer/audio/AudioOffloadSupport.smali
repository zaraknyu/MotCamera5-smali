.class public final Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;


# instance fields
.field public final isFormatSupported:Z

.field public final isGaplessSupported:Z

.field public final isSpeedChangeSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/BoxParser$StriData;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    iget-boolean v0, p1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    iget-boolean p1, p1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    if-ne v0, v1, :cond_2

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    shl-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    add-int/2addr v0, p0

    return v0
.end method
