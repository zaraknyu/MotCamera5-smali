.class public final Lc/K0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lc/M0;

.field public final synthetic c:Lc/P0;

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lc/M0;Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/K0;->b:Lc/M0;

    iput-object p2, p0, Lc/K0;->c:Lc/P0;

    iput-object p3, p0, Lc/K0;->d:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lc/K0;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lc/K0;

    iget-object v3, p0, Lc/K0;->d:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lc/K0;->e:Z

    iget-object v1, p0, Lc/K0;->b:Lc/M0;

    iget-object v2, p0, Lc/K0;->c:Lc/P0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc/K0;-><init>(Lc/M0;Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/K0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/K0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/K0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lc/K0;->b:Lc/M0;

    iget-object v1, v0, Lc/M0;->a:Lc/G;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lc/K0;->a:I

    const-string v4, "<set-?>"

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, p0, Lc/K0;->c:Lc/P0;

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v1, Lc/G;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object p1, Lc/P0;->f:Lc/P0;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lc/M0;->d:Lc/P0;

    iput v7, p0, Lc/K0;->a:I

    iget-boolean p1, v1, Lc/G;->f:Z

    if-nez p1, :cond_3

    sget-object p0, Lc/G;->l:Ljava/lang/String;

    const-string p1, "ImageRendition.update encountered immutable instance"

    invoke-static {p0, p1}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object p0, v5

    goto :goto_1

    :cond_3
    iget-boolean p1, v1, Lc/G;->g:Z

    iget-object v3, p0, Lc/K0;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    sget-object p1, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance p1, Lc/C;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lc/K0;->e:Z

    invoke-direct {p1, v1, v3, v8, v7}, Lc/C;-><init>(Lc/G;Landroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, p0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v5

    :goto_0
    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_2

    invoke-virtual {v1, v3, p0}, Lc/G;->a(Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    :goto_1
    if-ne p0, v2, :cond_6

    return-object v2

    :cond_6
    :goto_2
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lc/M0;->d:Lc/P0;

    return-object v5
.end method
