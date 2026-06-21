.class public final Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public final execute(Lcom/motorola/camera/EventListener;)V
    .locals 3

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ALWAYS_AWARE_CONNECT_WIFI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
