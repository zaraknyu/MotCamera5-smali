.class public final Landroidx/media3/common/MediaItem$ClippingProperties;
.super Landroidx/media3/common/MediaItem$ClippingConfiguration;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/extractor/PositionHolder;->buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;

    return-void
.end method
