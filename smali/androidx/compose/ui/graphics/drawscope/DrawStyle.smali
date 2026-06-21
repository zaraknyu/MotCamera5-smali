.class public abstract Landroidx/compose/ui/graphics/drawscope/DrawStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultDensity:Landroidx/compose/ui/unit/DensityImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;->DefaultDensity:Landroidx/compose/ui/unit/DensityImpl;

    return-void
.end method
