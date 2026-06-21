.class public final La/d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:La/f;

.field public b:Lg/a0;

.field public c:Ljava/lang/AutoCloseable;

.field public d:La/s;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/util/Iterator;

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:La/f;

.field public r:I


# direct methods
.method public constructor <init>(La/f;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, La/d;->q:La/f;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, La/d;->p:Ljava/lang/Object;

    iget p1, p0, La/d;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, La/d;->r:I

    iget-object p1, p0, La/d;->q:La/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, La/f;->a(La/s;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
