.class public final Landroidx/core/view/ScrollFeedbackProviderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mImpl:Lcom/google/android/gms/tasks/zzs;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tasks/zzs;-><init>(Landroidx/core/widget/NestedScrollView;)V

    iput-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Lcom/google/android/gms/tasks/zzs;

    return-void
.end method
