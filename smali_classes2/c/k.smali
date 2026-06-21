.class public final Lc/k;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/q;

.field public b:Ljava/util/Iterator;

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lc/q;

.field public f:I


# direct methods
.method public constructor <init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/k;->e:Lc/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lc/k;->d:Ljava/lang/Object;

    iget p1, p0, Lc/k;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/k;->f:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lc/k;->e:Lc/q;

    invoke-static {v1, p1, v0, p0}, Lc/q;->a(Lc/q;Lc/X;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
