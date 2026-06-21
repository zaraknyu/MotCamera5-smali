.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method
