.class public final Lc/i0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lg/a0;

.field public e:Lg/a0;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lc/j0;

.field public i:I


# direct methods
.method public constructor <init>(Lc/j0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/i0;->h:Lc/j0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/i0;->g:Ljava/lang/Object;

    iget p1, p0, Lc/i0;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/i0;->i:I

    iget-object p1, p0, Lc/i0;->h:Lc/j0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lc/j0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
