.class public final Landroidx/activity/FullyDrawnReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final lock:Ljava/lang/Object;

.field public final onReportCallbacks:Ljava/util/ArrayList;

.field public reportedFullyDrawn:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;)V
    .locals 0

    const-string p2, "executor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/FullyDrawnReporter;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/activity/FullyDrawnReporter;->onReportCallbacks:Ljava/util/ArrayList;

    return-void
.end method
