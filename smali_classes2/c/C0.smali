.class public final Lc/C0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Landroid/graphics/Bitmap;

.field public g:J

.field public h:J

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lc/D0;

.field public l:I


# direct methods
.method public constructor <init>(Lc/D0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/C0;->k:Lc/D0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/C0;->j:Ljava/lang/Object;

    iget p1, p0, Lc/C0;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/C0;->l:I

    iget-object p1, p0, Lc/C0;->k:Lc/D0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lc/D0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
