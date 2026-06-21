.class public final Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mShaders:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    return-void
.end method
