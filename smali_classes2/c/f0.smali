.class public final Lc/f0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;)V
    .locals 2

    iput-object p1, p0, Lc/f0;->f:Lc/s1;

    iget-object v0, p1, Lc/s1;->M:Lc/d0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lc/s1;->q:Lc/G;

    invoke-direct {p0, p1, v0, v1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 7
    sget-object v0, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v0, Lc/e0;

    iget-object v1, p0, Lc/f0;->f:Lc/s1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lc/e0;-><init>(Lc/f0;Lc/s1;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lc/P0;Lc/P0;)Z
    .locals 1

    const-string p0, "fromState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p1, Lc/P0;->a:Lc/a;

    iget-object v0, p2, Lc/P0;->a:Lc/a;

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    iget p0, p1, Lc/P0;->b:I

    iget v0, p2, Lc/P0;->b:I

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    if-eq v0, p0, :cond_0

    .line 5
    iget p0, p1, Lc/P0;->c:I

    iget v0, p2, Lc/P0;->c:I

    if-ne p0, v0, :cond_0

    .line 6
    iget p0, p1, Lc/P0;->d:I

    iget p1, p2, Lc/P0;->d:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
