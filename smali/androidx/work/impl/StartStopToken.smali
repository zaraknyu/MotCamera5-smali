.class public final Landroidx/work/impl/StartStopToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:Landroidx/work/impl/model/WorkGenerationalId;


# direct methods
.method public constructor <init>(Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    return-void
.end method
