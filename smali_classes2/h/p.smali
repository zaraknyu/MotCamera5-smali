.class public final Lh/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/J0;

.field public final b:Lc/h;

.field public final c:Lh/C;

.field public d:Lf/b;

.field public e:Z

.field public final f:Lc/q;

.field public final g:Ljava/util/BitSet;

.field public h:Lh/o;

.field public final i:Le/H0;


# direct methods
.method public constructor <init>(Le/J0;Lc/h;Lh/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/p;->a:Le/J0;

    iput-object p2, p0, Lh/p;->b:Lc/h;

    iput-object p3, p0, Lh/p;->c:Lh/C;

    new-instance p1, Lc/q;

    invoke-direct {p1}, Lc/q;-><init>()V

    iput-object p1, p0, Lh/p;->f:Lc/q;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lh/p;->g:Ljava/util/BitSet;

    new-instance p1, Le/X;

    new-instance p2, Lh/p$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lh/p$$ExternalSyntheticLambda0;-><init>(Lh/p;)V

    new-instance p3, Lh/p$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lh/p$$ExternalSyntheticLambda1;-><init>(Lh/p;)V

    invoke-direct {p1, p2, p3}, Le/X;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Le/H0;

    new-instance p3, Le/J$$ExternalSyntheticLambda4;

    const/4 v0, 0x5

    invoke-direct {p3, v0, p0}, Le/J$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p3, p1}, Le/H0;-><init>(Lkotlin/jvm/functions/Function1;Le/X;)V

    iput-object p2, p0, Lh/p;->i:Le/H0;

    return-void
.end method
