.class public final Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final callback:Landroidx/activity/result/ActivityResultCallback;

.field public final contract:Landroidx/activity/result/contract/ActivityResultContract;


# direct methods
.method public constructor <init>(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->callback:Landroidx/activity/result/ActivityResultCallback;

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->contract:Landroidx/activity/result/contract/ActivityResultContract;

    return-void
.end method
