.class public final Landroidx/compose/ui/node/LayerPositionalProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cameraDistance:F

.field public rotationZ:F

.field public scaleX:F

.field public scaleY:F

.field public transformOrigin:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    sget v0, Landroidx/compose/ui/graphics/TransformOrigin;->$r8$clinit:I

    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide v0, p0, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    return-void
.end method
