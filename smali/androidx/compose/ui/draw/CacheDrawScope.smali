.class public final Landroidx/compose/ui/draw/CacheDrawScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field public cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

.field public drawResult:Lcom/google/android/gms/tasks/zza;


# virtual methods
.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {p0}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {p0}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final onDrawWithContent(Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/zza;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tasks/zza;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tasks/zza;-><init>(IZ)V

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->drawResult:Lcom/google/android/gms/tasks/zza;

    return-object v0
.end method
