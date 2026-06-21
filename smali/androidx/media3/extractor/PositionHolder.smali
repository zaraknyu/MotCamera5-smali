.class public final Landroidx/media3/extractor/PositionHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public position:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/extractor/PositionHolder;->position:J

    return-void
.end method


# virtual methods
.method public buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;
    .locals 1

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v0, p0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/extractor/PositionHolder;)V

    return-object v0
.end method
