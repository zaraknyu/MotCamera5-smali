.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static createManager(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
    .locals 2

    new-instance v0, Lcom/tinder/StateMachine;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/tinder/StateMachine;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p0, 0x0

    throw p0
.end method
