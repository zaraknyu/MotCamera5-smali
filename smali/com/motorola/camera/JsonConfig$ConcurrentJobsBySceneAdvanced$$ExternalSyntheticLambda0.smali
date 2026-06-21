.class public final synthetic Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced$$ExternalSyntheticLambda0;->f$0:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    check-cast p1, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;

    iget p0, p0, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced$$ExternalSyntheticLambda0;->f$0:F

    float-to-double v0, p0

    iget-object p0, p1, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;->zoomRange:Landroid/util/Pair;

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v4, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double p0, v0, v4

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v3

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2
.end method
