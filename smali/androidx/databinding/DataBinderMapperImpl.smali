.class public Landroidx/databinding/DataBinderMapperImpl;
.super Landroidx/databinding/MergedDataBinderMapper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;-><init>()V

    new-instance v0, Lcom/motorola/camera/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/motorola/camera/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "com.motorola.camera.adobe_scan"

    const-string v2, ".DataBinderMapperImpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "com.motorola.camera5.mumba"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
