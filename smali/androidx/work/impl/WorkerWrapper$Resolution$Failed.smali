.class public final Landroidx/work/impl/WorkerWrapper$Resolution$Failed;
.super Landroidx/work/impl/WorkerWrapper$Resolution;
.source "SourceFile"


# instance fields
.field public final result:Landroidx/work/ListenableWorker$Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;->result:Landroidx/work/ListenableWorker$Result;

    return-void
.end method
