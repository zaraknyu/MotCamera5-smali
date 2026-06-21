.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createTrackThumb(Landroid/content/Context;II)Lcom/motorola/camera/cli/content/CliPresentationHolder;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "mutate(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060405

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v0, p1, p0, p2}, Lcom/motorola/camera/cli/content/CliPresentationHolder;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
