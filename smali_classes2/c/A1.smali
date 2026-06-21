.class public final Lc/A1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public c:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/A1;->a:F

    iput p2, p0, Lc/A1;->b:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/A1;->c:Z

    return-void
.end method
