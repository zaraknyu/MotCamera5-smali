.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;Z[F[F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create(ILandroidx/media3/common/TrackGroup;[I)Lcom/google/common/collect/RegularImmutableList;
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;

    invoke-direct {v9, v0, v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    aget v10, v1, p1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget v1, p2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    aget v7, p3, v5

    iget-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;->f$1:Z

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda9;I)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method
