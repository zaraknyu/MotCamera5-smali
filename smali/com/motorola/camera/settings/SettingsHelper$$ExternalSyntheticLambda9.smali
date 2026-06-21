.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroid/util/Range;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroid/util/Size;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroid/util/Range;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
