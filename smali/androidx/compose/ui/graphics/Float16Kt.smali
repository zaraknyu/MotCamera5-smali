.class public abstract Landroidx/compose/ui/graphics/Float16Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Fp32DenormalFloat:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/Float16Kt;->Fp32DenormalFloat:F

    return-void
.end method
