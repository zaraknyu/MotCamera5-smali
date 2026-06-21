.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;->f$1:F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->thresholdLux:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda17;->f$1:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->luxLowerThanThreshold:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
