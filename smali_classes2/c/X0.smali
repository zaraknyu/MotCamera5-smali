.class public final Lc/X0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lc/s1;

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(ZLc/s1;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lc/X0;->b:Z

    iput-object p2, p0, Lc/X0;->c:Lc/s1;

    iput p3, p0, Lc/X0;->d:I

    iput-object p4, p0, Lc/X0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lc/X0;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lc/X0;

    iget-object v4, p0, Lc/X0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lc/X0;->f:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lc/X0;->b:Z

    iget-object v2, p0, Lc/X0;->c:Lc/s1;

    iget v3, p0, Lc/X0;->d:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lc/X0;-><init>(ZLc/s1;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/X0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/X0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/X0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/X0;->a:I

    iget-object v2, p0, Lc/X0;->f:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lc/X0;->b:Z

    if-nez p1, :cond_7

    sget-object p1, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    iget-object p1, p0, Lc/X0;->c:Lc/s1;

    iget v1, p0, Lc/X0;->d:I

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lc/s1;->b0:Lc/A0;

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lc/s1;->a0:Lc/A0;

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lc/s1;->Z:Lc/A0;

    goto :goto_0

    :cond_5
    iget-object p1, p1, Lc/s1;->Y:Lc/A0;

    goto :goto_0

    :cond_6
    iget-object p1, p1, Lc/s1;->X:Lc/g1;

    :goto_0
    if-eqz p1, :cond_7

    iget-object v1, p0, Lc/X0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lc/P0;

    iput v3, p0, Lc/X0;->a:I

    invoke-virtual {p1, v1, v2, v3, p0}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
