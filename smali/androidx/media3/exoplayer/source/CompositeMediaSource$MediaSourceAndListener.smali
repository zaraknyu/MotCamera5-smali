.class public final Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final caller:Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;

.field public final eventListener:Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

.field public final mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    return-void
.end method
