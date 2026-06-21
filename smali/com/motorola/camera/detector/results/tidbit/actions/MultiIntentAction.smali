.class public final Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "SourceFile"


# instance fields
.field public final multiIntent:Ljava/util/ArrayList;

.field public final resource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->resource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iput-object p2, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->multiIntent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/motorola/camera/EventListener;)V
    .locals 3

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->multiIntent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo v2, "second"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;->resource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;->execute(Lcom/motorola/camera/EventListener;)V

    :cond_0
    return-void
.end method
