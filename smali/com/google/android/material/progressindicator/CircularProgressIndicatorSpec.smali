.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hideAnimationBehavior:I

.field public indicatorColors:[I

.field public indicatorDirection:I

.field public indicatorInset:I

.field public indicatorSize:I

.field public indicatorTrackGapSize:I

.field public showAnimationBehavior:I

.field public trackColor:I

.field public trackCornerRadius:I

.field public trackThickness:I


# virtual methods
.method public final validateSpec()V
    .locals 1

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorTrackGapSize:I

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "indicatorTrackGapSize must be >= 0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
