.class public final Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public maxOffsetMs:J

.field public maxPlaybackSpeed:F

.field public minOffsetMs:J

.field public minPlaybackSpeed:F

.field public targetOffsetMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return-void
.end method


# virtual methods
.method public final build()Landroidx/media3/common/MediaItem$LiveConfiguration;
    .locals 1

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-direct {v0, p0}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    return-object v0
.end method
