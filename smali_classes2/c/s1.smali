.class public final Lc/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d0:[Lkotlin/reflect/KProperty;

.field public static final e0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A:Lc/e1;

.field public B:Ljava/lang/String;

.field public final C:Lc/r0;

.field public final D:Lc/k1;

.field public E:Lc/a;

.field public final F:Lc/j0;

.field public G:I

.field public final H:Lc/k1;

.field public final I:Lc/k1;

.field public final J:Lc/k1;

.field public K:Ljava/lang/Object;

.field public L:Lb/c;

.field public final M:Lc/d0;

.field public final N:Lc/u0;

.field public final O:Lc/x0;

.field public final P:Lc/k1;

.field public final Q:Ljava/util/ArrayList;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public final T:Lc/D0;

.field public final U:Lc/R0;

.field public final V:Lc/m0;

.field public final W:Lc/f0;

.field public final X:Lc/g1;

.field public final Y:Lc/A0;

.field public final Z:Lc/A0;

.field public final a:Lc/X;

.field public final a0:Lc/A0;

.field public final b:I

.field public final b0:Lc/A0;

.field public final c:La/x;

.field public c0:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final d:Z

.field public final e:Lc/J;

.field public final f:I

.field public final g:Lc/E0;

.field public final h:Lc/G;

.field public final i:Lc/G;

.field public final j:Lc/G;

.field public final k:Lc/G;

.field public final l:Lc/G;

.field public final m:Lc/G;

.field public final n:Lc/G;

.field public final o:Lc/G;

.field public final p:Lc/G;

.field public final q:Lc/G;

.field public final r:Lc/G;

.field public final s:Lc/G;

.field public final t:Lc/G;

.field public final u:Lc/G;

.field public final v:Lc/G;

.field public w:I

.field public final x:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public z:Lkotlinx/coroutines/StandaloneCoroutine;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lc/s1;

    const-string v2, "crop"

    const-string v3, "getCrop()Lcom/adobe/dcmscan/document/Crop;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v5, "filter"

    const-string v6, "getFilter()I"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v3

    new-instance v5, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v6, "brightness"

    const-string v7, "getBrightness()I"

    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v7, "contrast"

    const-string v8, "getContrast()I"

    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    new-instance v7, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v8, "eraserDataUpdateTime"

    const-string v9, "getEraserDataUpdateTime()J"

    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    filled-new-array {v0, v3, v5, v6, v1}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/s1;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lc/X;ILa/x;ZLc/J;)V
    .locals 6

    const-string v0, "scanConfiguration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/s1;->a:Lc/X;

    iput p3, p0, Lc/s1;->b:I

    iput-object p4, p0, Lc/s1;->c:La/x;

    iput-boolean p5, p0, Lc/s1;->d:Z

    iput-object p6, p0, Lc/s1;->e:Lc/J;

    sget-object p2, Lc/s1;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    iput p2, p0, Lc/s1;->f:I

    new-instance p2, Lc/E0;

    invoke-direct {p2}, Lc/E0;-><init>()V

    iput-object p2, p0, Lc/s1;->g:Lc/E0;

    sget-object p2, Lc/G;->j:Lc/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lc/G;

    const-string p4, "Original"

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-direct {p3, p4, p5, p6}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    iput-object p3, p0, Lc/s1;->h:Lc/G;

    new-instance p4, Lc/G;

    const-string v0, "Cropped"

    invoke-direct {p4, v0, p6, p5}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lc/s1;->i:Lc/G;

    new-instance p4, Lc/G;

    const-string v0, "Cleaned"

    invoke-direct {p4, v0, p6, p5}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lc/s1;->j:Lc/G;

    new-instance p4, Lc/G;

    const-string v0, "Adjusted"

    invoke-direct {p4, v0, p6, p5}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lc/s1;->k:Lc/G;

    new-instance p4, Lc/G;

    const-string v0, "EraserLayer"

    invoke-direct {p4, v0, p6, p5}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lc/s1;->l:Lc/G;

    new-instance p4, Lc/G;

    const-string v0, "EraserLayerWithoutAdjust"

    invoke-direct {p4, v0, p6, p5}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lc/s1;->m:Lc/G;

    new-instance p4, Lc/G;

    const-string v0, "Final"

    invoke-direct {p4, v0, p5, p5}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    const/16 v0, 0x50

    iput v0, p4, Lc/G;->h:I

    new-instance v0, Lc/X$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5, p0}, Lc/X$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v1, p4, Lc/G;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p4, p0, Lc/s1;->n:Lc/G;

    const-string p4, "ScreenRes"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->o:Lc/G;

    const-string p4, "CleanedScreenRes"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->p:Lc/G;

    const-string p4, "AdjustedScreenRes"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->q:Lc/G;

    const-string p4, "OriginalThumb"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->r:Lc/G;

    const-string p4, "AutoThumb"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->s:Lc/G;

    const-string p4, "GrayThumb"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->t:Lc/G;

    const-string p4, "WhiteThumb"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p4

    iput-object p4, p0, Lc/s1;->u:Lc/G;

    const-string p4, "LightTextThumb"

    invoke-static {p2, p4}, Lc/e;->a(Lc/e;Ljava/lang/String;)Lc/G;

    move-result-object p2

    iput-object p2, p0, Lc/s1;->v:Lc/G;

    invoke-virtual {p3}, Lc/G;->d()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p2, Lc/G;->l:Ljava/lang/String;

    const-string p4, "setFile is replacing mFile"

    invoke-static {p2, p4}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3, p1}, Lc/G;->a(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x6

    const-string v0, "substring(...)"

    const-string v1, "toLowerCase(...)"

    if-nez p2, :cond_2

    :cond_1
    move v2, p6

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".enc"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p6, p4, v3}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_7

    sget-object v2, Lg/Q;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "extension"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_6

    :cond_5
    move v3, p6

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p6, p4, v3}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_4

    :cond_7
    move p6, p5

    :cond_8
    :goto_2
    iget-boolean p2, p3, Lc/G;->g:Z

    if-eq p6, p2, :cond_9

    iput-boolean p6, p3, Lc/G;->g:Z

    :cond_9
    iget-object p2, p0, Lc/s1;->g:Lc/E0;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getAbsolutePath(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, Lc/E0;->a:Ljava/lang/String;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lc/E0;->j:Ljava/lang/String;

    iget-object p1, p0, Lc/s1;->g:Lc/E0;

    iget p2, p0, Lc/s1;->b:I

    const/4 p4, 0x0

    if-eqz p2, :cond_a

    iget-object p6, p1, Lc/E0;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_a
    move-object p2, p4

    :goto_3
    iput-object p2, p1, Lc/E0;->n:Ljava/lang/String;

    new-instance p1, Lc/T0;

    invoke-direct {p1, p0, p4, p5}, Lc/T0;-><init>(Lc/s1;Lkotlin/coroutines/Continuation;I)V

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget p1, p0, Lc/s1;->b:I

    iput p1, p0, Lc/s1;->w:I

    new-instance p2, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object p2, p0, Lc/s1;->x:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    sget-object p1, Lc/P0;->f:Lc/P0;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p1, p0, Lc/s1;->h:Lc/G;

    new-instance p2, Lc/e1;

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p2, p0, p3, p1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    iput-object p2, p0, Lc/s1;->A:Lc/e1;

    sget-object p1, Lc/N;->a:Lc/N;

    new-instance p1, Lc/r0;

    invoke-direct {p1, p0}, Lc/r0;-><init>(Lc/s1;)V

    iput-object p1, p0, Lc/s1;->C:Lc/r0;

    new-instance p2, Lc/a;

    new-instance p3, Landroid/graphics/PointF;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p6, Landroid/graphics/PointF;

    invoke-direct {p6, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p2, p3, p6, v0, v1}, Lc/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    new-instance p3, Lc/k1;

    invoke-direct {p3, p2, p0}, Lc/k1;-><init>(Lc/a;Lc/s1;)V

    iput-object p3, p0, Lc/s1;->D:Lc/k1;

    new-instance p2, Lc/a;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p6, Landroid/graphics/PointF;

    invoke-direct {p6, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p2, p3, p6, v0, v1}, Lc/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    new-instance p2, Lc/j0;

    invoke-direct {p2, p0}, Lc/j0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->F:Lc/j0;

    const/4 p2, -0x1

    iput p2, p0, Lc/s1;->G:I

    new-instance p2, Lc/k1;

    invoke-direct {p2, p0, p5}, Lc/k1;-><init>(Lc/s1;I)V

    iput-object p2, p0, Lc/s1;->H:Lc/k1;

    new-instance p2, Lc/k1;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lc/k1;-><init>(Lc/s1;I)V

    iput-object p2, p0, Lc/s1;->I:Lc/k1;

    new-instance p2, Lc/k1;

    const/4 p4, 0x3

    invoke-direct {p2, p0, p4}, Lc/k1;-><init>(Lc/s1;I)V

    iput-object p2, p0, Lc/s1;->J:Lc/k1;

    new-instance p2, Lc/d0;

    invoke-direct {p2, p0}, Lc/d0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->M:Lc/d0;

    new-instance p2, Lc/u0;

    invoke-direct {p2, p0}, Lc/u0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->N:Lc/u0;

    new-instance p2, Lc/x0;

    invoke-direct {p2, p0}, Lc/x0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->O:Lc/x0;

    new-instance p2, Lc/k1;

    const/4 p6, 0x4

    invoke-direct {p2, p0, p6}, Lc/k1;-><init>(Lc/s1;I)V

    iput-object p2, p0, Lc/s1;->P:Lc/k1;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/s1;->Q:Ljava/util/ArrayList;

    new-instance p2, Lc/D0;

    invoke-direct {p2, p0}, Lc/D0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->T:Lc/D0;

    new-instance p2, Lc/R0;

    invoke-direct {p2, p0}, Lc/R0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->U:Lc/R0;

    new-instance p2, Lc/m0;

    invoke-direct {p2, p0}, Lc/m0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->V:Lc/m0;

    new-instance p2, Lc/f0;

    invoke-direct {p2, p0}, Lc/f0;-><init>(Lc/s1;)V

    iput-object p2, p0, Lc/s1;->W:Lc/f0;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lc/s1;->r:Lc/G;

    new-instance v0, Lc/g1;

    invoke-direct {v0, p0, p1, p2}, Lc/g1;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    iput-object v0, p0, Lc/s1;->X:Lc/g1;

    new-instance p1, Lc/A0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lc/s1;->s:Lc/G;

    invoke-direct {p1, p0, p5, p2, v1}, Lc/A0;-><init>(Lc/s1;ILjava/util/List;Lc/G;)V

    iput-object p1, p0, Lc/s1;->Y:Lc/A0;

    new-instance p1, Lc/A0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p5, p0, Lc/s1;->t:Lc/G;

    invoke-direct {p1, p0, p3, p2, p5}, Lc/A0;-><init>(Lc/s1;ILjava/util/List;Lc/G;)V

    iput-object p1, p0, Lc/s1;->Z:Lc/A0;

    new-instance p1, Lc/A0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lc/s1;->u:Lc/G;

    invoke-direct {p1, p0, p4, p2, p3}, Lc/A0;-><init>(Lc/s1;ILjava/util/List;Lc/G;)V

    iput-object p1, p0, Lc/s1;->a0:Lc/A0;

    new-instance p1, Lc/A0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lc/s1;->v:Lc/G;

    invoke-direct {p1, p0, p6, p2, p3}, Lc/A0;-><init>(Lc/s1;ILjava/util/List;Lc/G;)V

    iput-object p1, p0, Lc/s1;->b0:Lc/A0;

    return-void
.end method

.method public static a([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/Matrix;
    .locals 7

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p0, v4

    .line 25
    iget v6, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v6, v5}, [Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 26
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object v1

    .line 28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 30
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 31
    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-object v0
.end method

.method public static final a(Lc/s1;Landroid/graphics/Bitmap;Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 3
    instance-of v0, p3, Lc/q1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc/q1;

    iget v1, v0, Lc/q1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/q1;->f:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lc/q1;

    invoke-direct {v0, p0, p3}, Lc/q1;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p3, v7, Lc/q1;->d:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v1, v7, Lc/q1;->f:I

    const/4 v2, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v7, Lc/q1;->b:Ljava/lang/Object;

    check-cast p0, Lc/P0;

    iget-object p1, v7, Lc/q1;->a:Lc/s1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p2, v7, Lc/q1;->c:Lc/P0;

    iget-object p0, v7, Lc/q1;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, v7, Lc/q1;->a:Lc/s1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object v1, p0

    move-object v6, p1

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    iget-object p3, p0, Lc/s1;->F:Lc/j0;

    iput-object p0, v7, Lc/q1;->a:Lc/s1;

    iput-object p1, v7, Lc/q1;->b:Ljava/lang/Object;

    iput-object p2, v7, Lc/q1;->c:Lc/P0;

    iput v8, v7, Lc/q1;->f:I

    .line 6
    invoke-virtual {p3, p2, p1, v8, v7}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    goto :goto_3

    .line 7
    :goto_2
    invoke-virtual {v1}, Lc/s1;->b()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8
    iget-object v5, v1, Lc/s1;->N:Lc/u0;

    iput-object v1, v7, Lc/q1;->a:Lc/s1;

    iput-object p2, v7, Lc/q1;->b:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v7, Lc/q1;->c:Lc/P0;

    iput v2, v7, Lc/q1;->f:I

    .line 9
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lc/s1;->a(Lc/P0;IILc/M0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_3
    return-object v0

    :cond_5
    move-object v2, p2

    :cond_6
    move-object p1, v1

    move-object p0, v2

    .line 10
    :goto_4
    invoke-virtual {p1}, Lc/s1;->k()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_7

    .line 11
    iget p0, p0, Lc/P0;->b:I

    .line 12
    iget-object p1, p1, Lc/s1;->H:Lc/k1;

    sget-object p2, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object p2, p2, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    .line 13
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lc/s1;[Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z
    .locals 5

    .line 1
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    array-length p0, p2

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_0
    if-ge p0, v1, :cond_2

    .line 2
    aget-object v2, p1, p0

    add-int/lit8 v3, p0, 0x3

    rem-int/2addr v3, v1

    aget-object v3, p2, v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, p0, 0x1

    rem-int/2addr v2, v1

    aget-object v3, p1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    rem-int/2addr v2, v1

    aget-object v2, p2, v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static final a(Lc/s1;Lb/f;II[Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 4

    if-eqz p4, :cond_2

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 14
    check-cast p1, Lb/o;

    invoke-virtual {p1, p4, p2, p3}, Lb/o;->a([Landroid/graphics/PointF;II)Ljava/util/Vector;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const/16 v0, 0x64

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lt p1, v0, :cond_0

    .line 16
    aget-object p0, p4, p2

    aget-object p1, p4, v3

    aget-object p2, p4, v2

    aget-object p3, p4, v1

    filled-new-array {p0, p1, p2, p3}, [Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lc/s1;->g()Lc/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/a;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lc/s1;->g()Lc/a;

    move-result-object p0

    .line 18
    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Lc/a;

    invoke-direct {p0}, Lc/a;-><init>()V

    .line 20
    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    .line 21
    :goto_0
    aget-object p1, p0, p2

    aget-object p2, p0, v3

    aget-object p3, p0, v2

    aget-object p0, p0, v1

    filled-new-array {p1, p2, p3, p0}, [Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lc/P0;IILc/M0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    instance-of v3, v2, Lc/r1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lc/r1;

    iget v4, v3, Lc/r1;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lc/r1;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Lc/r1;

    invoke-direct {v3, v0, v2}, Lc/r1;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lc/r1;->g:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 50
    iget v5, v3, Lc/r1;->i:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v12, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v9, :cond_1

    iget-object v0, v3, Lc/r1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, v3, Lc/r1;->a:Ljava/lang/Object;

    check-cast v1, Lc/P0;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lc/r1;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, v3, Lc/r1;->c:Ljava/lang/Object;

    check-cast v1, Lg/J;

    iget-object v5, v3, Lc/r1;->b:Ljava/lang/Object;

    check-cast v5, Lc/P0;

    iget-object v7, v3, Lc/r1;->a:Ljava/lang/Object;

    check-cast v7, Lc/M0;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v0, v3, Lc/r1;->f:I

    iget v1, v3, Lc/r1;->e:I

    iget-object v5, v3, Lc/r1;->d:Ljava/lang/Object;

    check-cast v5, Lc/P0;

    iget-object v13, v3, Lc/r1;->c:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Bitmap;

    iget-object v14, v3, Lc/r1;->b:Ljava/lang/Object;

    check-cast v14, Lc/M0;

    iget-object v15, v3, Lc/r1;->a:Ljava/lang/Object;

    check-cast v15, Lc/s1;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget v0, v3, Lc/r1;->f:I

    iget v1, v3, Lc/r1;->e:I

    iget-object v5, v3, Lc/r1;->d:Ljava/lang/Object;

    check-cast v5, Lc/P0;

    iget-object v13, v3, Lc/r1;->c:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Bitmap;

    iget-object v14, v3, Lc/r1;->b:Ljava/lang/Object;

    check-cast v14, Lc/M0;

    iget-object v15, v3, Lc/r1;->a:Ljava/lang/Object;

    check-cast v15, Lc/s1;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v21, v14

    move v14, v0

    move-object v0, v2

    move-object v2, v13

    move v13, v1

    move-object/from16 v1, v21

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    sget-object v2, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object v2, v2, v9

    iget-object v5, v0, Lc/s1;->P:Lc/k1;

    invoke-virtual {v5, v0, v2}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    const/16 v20, 0xf

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p1

    .line 52
    invoke-static/range {v13 .. v20}, Lc/P0;->a(Lc/P0;Lc/a;IIIJI)Lc/P0;

    move-result-object v5

    .line 53
    iput-object v0, v3, Lc/r1;->a:Ljava/lang/Object;

    iput-object v1, v3, Lc/r1;->b:Ljava/lang/Object;

    move-object/from16 v2, p5

    iput-object v2, v3, Lc/r1;->c:Ljava/lang/Object;

    iput-object v5, v3, Lc/r1;->d:Ljava/lang/Object;

    move/from16 v13, p2

    iput v13, v3, Lc/r1;->e:I

    move/from16 v14, p3

    iput v14, v3, Lc/r1;->f:I

    iput v12, v3, Lc/r1;->i:I

    invoke-virtual {v1, v5, v3}, Lc/M0;->a(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_6

    goto/16 :goto_d

    :cond_6
    move-object/from16 v21, v15

    move-object v15, v0

    move-object/from16 v0, v21

    :goto_1
    check-cast v0, Lc/N0;

    if-eqz v0, :cond_7

    return-object v0

    .line 54
    :cond_7
    iput-object v15, v3, Lc/r1;->a:Ljava/lang/Object;

    iput-object v1, v3, Lc/r1;->b:Ljava/lang/Object;

    iput-object v2, v3, Lc/r1;->c:Ljava/lang/Object;

    iput-object v5, v3, Lc/r1;->d:Ljava/lang/Object;

    iput v13, v3, Lc/r1;->e:I

    iput v14, v3, Lc/r1;->f:I

    iput v8, v3, Lc/r1;->i:I

    invoke-virtual {v1, v3}, Lc/M0;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    goto/16 :goto_d

    :cond_8
    move v0, v14

    move-object v14, v1

    move v1, v13

    move-object v13, v2

    .line 55
    :goto_2
    invoke-virtual {v15}, Lc/s1;->u()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 56
    new-instance v2, Lg/J;

    invoke-direct {v2}, Lg/J;-><init>()V

    int-to-float v9, v1

    .line 57
    iget-object v6, v2, Lg/J;->k:Landroid/graphics/RectF;

    iput v9, v6, Landroid/graphics/RectF;->right:F

    int-to-float v9, v0

    .line 58
    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 59
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v9, "createBitmap(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    new-instance v8, Lg/H;

    invoke-direct {v8, v6, v9}, Lg/H;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 62
    iput-object v8, v2, Lg/J;->g:Lg/H;

    .line 63
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    iput-boolean v12, v2, Lg/J;->h:Z

    .line 65
    invoke-virtual {v15}, Lc/s1;->g()Lc/a;

    move-result-object v6

    .line 66
    new-instance v8, Landroid/util/Size;

    iget-object v9, v15, Lc/s1;->h:Lc/G;

    .line 67
    iget v10, v9, Lc/G;->d:I

    .line 68
    iget v9, v9, Lc/G;->e:I

    .line 69
    invoke-direct {v8, v10, v9}, Landroid/util/Size;-><init>(II)V

    .line 70
    invoke-static {v6, v8}, La/l;->a(Lc/a;Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v6

    .line 71
    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v1, v0}, Landroid/util/Size;-><init>(II)V

    invoke-static {v8}, La/l;->a(Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v6, v0}, Lc/s1;->a([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 72
    iput-object v0, v2, Lg/J;->b:Ljava/util/List;

    .line 73
    iget-object v0, v15, Lc/s1;->Q:Ljava/util/ArrayList;

    if-eqz v13, :cond_13

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_7

    .line 75
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/T;

    .line 76
    iget v6, v6, Lg/T;->m:I

    if-nez v6, :cond_a

    .line 77
    iput-object v14, v3, Lc/r1;->a:Ljava/lang/Object;

    iput-object v5, v3, Lc/r1;->b:Ljava/lang/Object;

    iput-object v2, v3, Lc/r1;->c:Ljava/lang/Object;

    iput-object v0, v3, Lc/r1;->d:Ljava/lang/Object;

    iput v7, v3, Lc/r1;->i:I

    .line 78
    sget-object v1, Lg/J;->l:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v6, La/g;

    const/4 v8, 0x2

    invoke-direct {v6, v13, v2, v11, v8}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v1, v6, v3}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_b

    goto/16 :goto_d

    :cond_b
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v14

    .line 79
    :goto_3
    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_12

    .line 80
    sget-object v6, Lg/J;->l:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lg/J;->i:Lg/p;

    .line 82
    iget-boolean v8, v1, Lg/J;->h:Z

    if-eqz v8, :cond_12

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v8

    if-nez v8, :cond_c

    .line 84
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v8, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 85
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v8

    .line 86
    :cond_c
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    const/high16 v10, -0x1000000

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v2, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v8, v1, Lg/J;->f:Landroid/graphics/BitmapShader;

    .line 88
    iget-object v2, v6, Lg/p;->c:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v8, "iterator(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_d
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "next(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lg/b;

    .line 90
    instance-of v10, v9, Lg/T;

    if-eqz v10, :cond_e

    move-object v10, v9

    check-cast v10, Lg/T;

    goto :goto_5

    :cond_e
    move-object v10, v11

    :goto_5
    if-eqz v10, :cond_d

    .line 91
    iget v10, v10, Lg/T;->m:I

    if-nez v10, :cond_d

    .line 92
    iget-object v8, v9, Lg/b;->g:Lg/c;

    .line 93
    instance-of v9, v8, Lg/W;

    if-eqz v9, :cond_f

    check-cast v8, Lg/W;

    goto :goto_6

    :cond_f
    move-object v8, v11

    :goto_6
    if-eqz v8, :cond_10

    .line 94
    iget-object v8, v8, Lg/W;->d:Landroid/graphics/Paint;

    if-eqz v8, :cond_10

    .line 95
    iget-object v9, v1, Lg/J;->f:Landroid/graphics/BitmapShader;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_10
    move v8, v12

    goto :goto_4

    :cond_11
    if-eqz v8, :cond_12

    const/4 v2, -0x1

    .line 96
    invoke-virtual {v1, v2}, Lg/J;->a(I)V

    .line 97
    iget-object v2, v6, Lg/p;->c:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 99
    invoke-virtual {v1, v2}, Lg/J;->a(I)V

    :cond_12
    move-object v2, v1

    move-object v14, v7

    :cond_13
    :goto_7
    move-object v1, v5

    .line 100
    sget-object v5, Lg/J;->l:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lg/J;->i:Lg/p;

    .line 102
    iget-object v6, v5, Lg/p;->c:Ljava/util/ArrayList;

    iget-object v7, v5, Lg/p;->d:Ljava/util/ArrayList;

    iget-object v8, v5, Lg/p;->c:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/b;

    .line 104
    iput-object v11, v9, Lg/b;->g:Lg/c;

    goto :goto_8

    .line 105
    :cond_14
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v6, -0x1

    .line 106
    invoke-virtual {v2, v6}, Lg/J;->a(I)V

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/b;

    .line 108
    const-string v9, "mark"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v9, v5, Lg/p;->b:Ljava/util/HashMap;

    .line 110
    new-instance v10, Lg/k;

    invoke-direct {v10, v5, v6}, Lg/k;-><init>(Lg/p;Lg/b;)V

    .line 111
    iget v13, v5, Lg/p;->e:I

    add-int/2addr v13, v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v13, v15, :cond_15

    move v13, v15

    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v7, v13, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v13

    const-string v15, "subList(...)"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v13

    iput v13, v5, Lg/p;->e:I

    .line 115
    const-string v13, "annot"

    iget-object v15, v10, Lg/k;->e:Lg/b;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v15}, Lg/b;->c()Z

    move-result v13

    if-nez v13, :cond_16

    .line 117
    iget-object v13, v5, Lg/p;->a:Ljava/lang/String;

    move/from16 v16, v12

    const-string v12, "addAnnot encountered invalid AnnotData"

    invoke-static {v13, v12}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    move/from16 v16, v12

    .line 118
    :goto_a
    iget v12, v15, Lg/b;->e:I

    .line 119
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget v10, v10, Lg/o;->a:I

    .line 122
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/b;

    .line 123
    iput-object v11, v6, Lg/b;->g:Lg/c;

    move/from16 v12, v16

    goto :goto_9

    :cond_17
    move/from16 v16, v12

    .line 124
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    invoke-virtual {v2, v0}, Lg/J;->a(I)V

    .line 126
    iget v0, v5, Lg/p;->e:I

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v0, :cond_19

    .line 127
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    .line 128
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v9, "get(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lg/o;

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 129
    :cond_19
    iget-boolean v0, v2, Lg/J;->h:Z

    if-eqz v0, :cond_1a

    .line 130
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 131
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, v2, Lg/J;->h:Z

    .line 133
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    invoke-virtual {v2, v0}, Lg/J;->a(I)V

    .line 135
    iget-object v0, v2, Lg/J;->g:Lg/H;

    .line 136
    iget-object v0, v0, Lg/H;->a:Landroid/graphics/Bitmap;

    goto :goto_c

    :cond_1a
    move-object v0, v11

    :goto_c
    if-eqz v0, :cond_1c

    .line 137
    iput-object v1, v3, Lc/r1;->a:Ljava/lang/Object;

    iput-object v0, v3, Lc/r1;->b:Ljava/lang/Object;

    iput-object v11, v3, Lc/r1;->c:Ljava/lang/Object;

    iput-object v11, v3, Lc/r1;->d:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v3, Lc/r1;->i:I

    move/from16 v2, v16

    .line 138
    invoke-virtual {v14, v1, v0, v2, v3}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1b

    :goto_d
    return-object v4

    .line 139
    :cond_1b
    :goto_e
    new-instance v2, Lc/N0;

    invoke-direct {v2, v1, v0}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_1c
    return-object v11
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lc/Z0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/Z0;

    iget v1, v0, Lc/Z0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/Z0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/Z0;

    invoke-direct {v0, p0, p1}, Lc/Z0;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lc/Z0;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 140
    iget v2, v0, Lc/Z0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/Z0;->b:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lc/Z0;->a:Lc/s1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lc/Z0;->a:Lc/s1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lc/s1;->W:Lc/f0;

    iget-object v2, p1, Lc/M0;->e:Lc/s1;

    .line 142
    iget-object v2, v2, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 143
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/P0;

    .line 144
    const-string v6, "state"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v7, p1, Lc/M0;->d:Lc/P0;

    invoke-virtual {p1, v7, v2}, Lc/f0;->a(Lc/P0;Lc/P0;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 146
    iget-object v2, p1, Lc/M0;->a:Lc/G;

    invoke-virtual {v2}, Lc/G;->g()Z

    move-result v2

    if-nez v2, :cond_a

    .line 147
    invoke-virtual {p0}, Lc/s1;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget-object v2, p0, Lc/s1;->N:Lc/u0;

    iget-object v7, v2, Lc/M0;->e:Lc/s1;

    .line 149
    iget-object v7, v7, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 150
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/P0;

    .line 151
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v6, v2, Lc/M0;->d:Lc/P0;

    invoke-virtual {v2, v6, v7}, Lc/u0;->a(Lc/P0;Lc/P0;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 153
    iget-object v2, v2, Lc/M0;->a:Lc/G;

    invoke-virtual {v2}, Lc/G;->g()Z

    move-result v2

    if-nez v2, :cond_a

    .line 154
    :cond_4
    iput-object p0, v0, Lc/Z0;->a:Lc/s1;

    iput v4, v0, Lc/Z0;->e:I

    invoke-static {p1, v0}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_6

    .line 155
    iget-object p1, p1, Lc/N0;->b:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_6
    move-object p1, v5

    :goto_2
    if-eqz p1, :cond_9

    .line 156
    invoke-virtual {p0}, Lc/s1;->u()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 157
    iget-object v2, p0, Lc/s1;->N:Lc/u0;

    iput-object p0, v0, Lc/Z0;->a:Lc/s1;

    iput-object p1, v0, Lc/Z0;->b:Landroid/graphics/Bitmap;

    iput v3, v0, Lc/Z0;->e:I

    invoke-static {v2, v0}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v8, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v8

    :goto_4
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_a

    .line 158
    iget-object p1, p1, Lc/N0;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_8

    goto :goto_5

    .line 159
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 162
    invoke-virtual {v0, p1, v5, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_9
    return-object p1

    :cond_a
    :goto_5
    return-object v5
.end method

.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lc/U0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/U0;

    iget v1, v0, Lc/U0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/U0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/U0;

    invoke-direct {v0, p0, p2}, Lc/U0;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/U0;->a:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 164
    iget v2, v0, Lc/U0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    iput v3, v0, Lc/U0;->c:I

    iget-object p0, p0, Lc/s1;->V:Lc/m0;

    invoke-virtual {p0, p1, v0}, Lc/m0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lc/N0;

    if-eqz p2, :cond_4

    .line 166
    iget-object p0, p2, Lc/N0;->b:Landroid/graphics/Bitmap;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lc/V0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc/V0;

    iget v1, v0, Lc/V0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/V0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/V0;

    invoke-direct {v0, p0, p3}, Lc/V0;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lc/V0;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 167
    iget v2, v0, Lc/V0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/V0;->b:Landroid/graphics/Bitmap;

    iget-object p1, v0, Lc/V0;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p2, v0, Lc/V0;->c:Z

    iget-object p0, v0, Lc/V0;->a:Ljava/lang/Object;

    check-cast p0, Lc/s1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lc/s1;->u()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 169
    iput-object p0, v0, Lc/V0;->a:Ljava/lang/Object;

    iput-boolean p2, v0, Lc/V0;->c:Z

    iput v5, v0, Lc/V0;->f:I

    iget-object p3, p0, Lc/s1;->V:Lc/m0;

    invoke-virtual {p3, p1, v0}, Lc/m0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p3, Lc/N0;

    if-eqz p3, :cond_7

    .line 170
    iget-object p1, p3, Lc/N0;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string v2, "createBitmap(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 172
    iget-object p0, p0, Lc/s1;->N:Lc/u0;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lc/s1;->O:Lc/x0;

    .line 173
    :goto_2
    iput-object p1, v0, Lc/V0;->a:Ljava/lang/Object;

    iput-object p3, v0, Lc/V0;->b:Landroid/graphics/Bitmap;

    iput v3, v0, Lc/V0;->f:I

    .line 174
    invoke-virtual {p0, v5, v0}, Lc/M0;->a$1(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object v7, p3

    move-object p3, p0

    move-object p0, v7

    .line 175
    :goto_4
    check-cast p3, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_7

    .line 176
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 177
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p3, v4, p2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 178
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_7
    return-object v4
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lc/s1;->R:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    iget-object v0, p0, Lc/s1;->g:Lc/E0;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 38
    iget-object v1, v0, Lc/E0;->f:Ljava/lang/String;

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_1
    iput-object v1, v0, Lc/E0;->l:Ljava/lang/String;

    .line 40
    :cond_2
    iput-object p1, p0, Lc/s1;->R:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 42
    invoke-static {p1}, Lg/Z;->a(Ljava/lang/String;)Lg/U;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 43
    iget-object v0, p0, Lc/s1;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object p1, p1, Lg/U;->a:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lg/T;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 49
    sget-object p1, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Lc/s1;->P:Lc/k1;

    invoke-virtual {p0, v0, p1}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :cond_5
    return-void
.end method

.method public final a$3()V
    .locals 14

    iget-object v12, p0, Lc/s1;->u:Lc/G;

    iget-object v13, p0, Lc/s1;->v:Lc/G;

    iget-object v0, p0, Lc/s1;->j:Lc/G;

    iget-object v1, p0, Lc/s1;->i:Lc/G;

    iget-object v2, p0, Lc/s1;->k:Lc/G;

    iget-object v3, p0, Lc/s1;->n:Lc/G;

    iget-object v4, p0, Lc/s1;->l:Lc/G;

    iget-object v5, p0, Lc/s1;->m:Lc/G;

    iget-object v6, p0, Lc/s1;->o:Lc/G;

    iget-object v7, p0, Lc/s1;->q:Lc/G;

    iget-object v8, p0, Lc/s1;->p:Lc/G;

    iget-object v9, p0, Lc/s1;->r:Lc/G;

    iget-object v10, p0, Lc/s1;->s:Lc/G;

    iget-object v11, p0, Lc/s1;->t:Lc/G;

    filled-new-array/range {v0 .. v13}, [Lc/G;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lc/G;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lc/G;->h()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lc/W0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/W0;

    iget v1, v0, Lc/W0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/W0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/W0;

    invoke-direct {v0, p0, p2}, Lc/W0;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/W0;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    iget v2, v0, Lc/W0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/W0;->b:Landroid/graphics/Bitmap;

    iget-object p1, v0, Lc/W0;->a:Lc/s1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lc/W0;->a:Lc/s1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    iput-object p0, v0, Lc/W0;->a:Lc/s1;

    iput v4, v0, Lc/W0;->e:I

    iget-object p2, p0, Lc/s1;->W:Lc/f0;

    invoke-virtual {p2, p1, v0}, Lc/f0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p2, Lc/N0;

    if-eqz p2, :cond_5

    .line 12
    iget-object p1, p2, Lc/N0;->b:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_5
    move-object p1, v5

    :goto_2
    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p0}, Lc/s1;->u()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 14
    iget-object p2, p0, Lc/s1;->N:Lc/u0;

    iput-object p0, v0, Lc/W0;->a:Lc/s1;

    iput-object p1, v0, Lc/W0;->b:Landroid/graphics/Bitmap;

    iput v3, v0, Lc/W0;->e:I

    .line 15
    invoke-virtual {p2, v4, v0}, Lc/M0;->a$1(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 16
    :goto_4
    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_7

    return-object v5

    .line 17
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    invoke-virtual {p1, p2, v5, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_8
    return-object p1
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 4

    instance-of v0, p1, Lc/j1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/j1;

    iget v1, v0, Lc/j1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/j1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/j1;

    invoke-direct {v0, p0, p1}, Lc/j1;-><init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lc/j1;->a:Ljava/lang/Object;

    .line 1
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v0, v0, Lc/j1;->c:I

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 3
    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lc/s1;->c:La/x;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 7
    iget-object p0, p0, Lc/s1;->Q:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/T;

    .line 9
    iget v0, v0, Lg/T;->m:I

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 2

    sget-object v0, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lc/s1;->I:Lc/k1;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 2

    sget-object v0, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lc/s1;->J:Lc/k1;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final g()Lc/a;
    .locals 2

    sget-object v0, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lc/s1;->D:Lc/k1;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/a;

    return-object p0
.end method

.method public final k()I
    .locals 2

    sget-object v0, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lc/s1;->H:Lc/k1;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final m()Landroid/util/Size;
    .locals 4

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lc/s1;->h:Lc/G;

    iget v2, v1, Lc/G;->d:I

    iget v1, v1, Lc/G;->e:I

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static {}, La/l;->a()Lb/o;

    move-result-object v1

    invoke-virtual {p0}, Lc/s1;->g()Lc/a;

    move-result-object p0

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lb/o;->a([Landroid/graphics/PointF;II)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method public final s()Lc/X;
    .locals 0

    iget-object p0, p0, Lc/s1;->a:Lc/X;

    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lc/s1;->Q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final v()V
    .locals 7

    new-instance v0, Lc/P0;

    invoke-virtual {p0}, Lc/s1;->g()Lc/a;

    move-result-object v1

    invoke-virtual {p0}, Lc/s1;->k()I

    move-result v2

    invoke-virtual {p0}, Lc/s1;->d()I

    move-result v3

    invoke-virtual {p0}, Lc/s1;->f()I

    move-result v4

    sget-object v5, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Lc/s1;->P:Lc/k1;

    invoke-virtual {v6, p0, v5}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lc/P0;-><init>(Lc/a;IIIJ)V

    iget-object v1, p0, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/P0;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lc/s1;->z:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v2, Lc/T0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lc/T0;-><init>(Lc/s1;Lkotlin/coroutines/Continuation;I)V

    sget-object v4, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v4, v0, v1, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lc/s1;->z:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
