# Tomcat

**Available Architectures:**  `amd64`, `arm64`

## 🐋 Available Docker tags


#### Rolling releases

The following Docker image tags are rolling releases and are built and updated every night.


| Docker Tag                       |    Git Ref   |  Available Architectures    |
|----------------------------------|--------------|-----------------------------|
| **[`<tag>`][tag_latest]**        |      main    |      `amd64`, `arm64`       |


#### Point in time releases

The following Docker image tags are built once and can be used for reproducible builds. Its version never changes so you will have to update tags in your pipelines from time to time in order to stay up-to-date.

| Docker Tag                       | Git Ref      |  Available Architectures    |
|----------------------------------|--------------|-----------------------------|
| **[`<tag>`][tag_latest]**        | git: `<tag>` |      `amd64`, `arm64`       |

> 🛈 Where `<tag>` refers to the chosen git tag from this repository.<br/>
> ⚠ **Warning:** The latest available git tag is also build every night and considered a rolling tag.


## ∑ Environment Variables

The provided Docker images add a lot of injectables in order to customize it to your needs. See the table below for a brief overview.

>
> If you don't feel like reading the documentation, simply try out your `docker run` command and add
> any environment variables specified below. The validation will tell you what you might have done wrong,
> how to fix it and what the meaning is.

<table>
 <tr valign="top" style="vertical-align:top">
  <td>
   <strong>Verbosity</strong><br/>
   <code>DEBUG_ENTRYPOINT</a></code><br/>
   <code>DEBUG_RUNTIME</a></code><br/>
  </td>
  <td>
   <strong>System</strong><br/>
   <code>NEW_UID</a></code><br/>
   <code>NEW_GID</a></code><br/>
   <code>TIMEZONE</a></code><br/>
  </td>
 </tr>
</table>


## 📂 Volumes

The provided Docker images offer the following internal paths to be mounted to your local file system.

<table>
 <tr>
  <th>Data dir</th>
  <th>Config dir</th>
 </tr>
 <tr valign="top" style="vertical-align:top">
  <td>
   <code>/data/webroot/default/</code><br/>
  </td>
  <td>
   <code>/usr/local/tomcat/conf/server.xml</code><br/>
  </td>
 </tr>
</table>


## 🖧 Exposed Ports

| Docker | Description |
|--------|-------------|
| 8080   | HTTP listening Port |


## 🧘 Maintainer

**[@linuxeye](https://github.com/linuxeye)**

**Findme:**
**🐋** [bypanel](https://hub.docker.com/u/bypanel)