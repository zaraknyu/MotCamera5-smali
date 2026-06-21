.class public abstract Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method
